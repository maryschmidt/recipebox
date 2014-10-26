@recipebox.controller('RecipeShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./recipes/#{$routeParams.id}.json").success((data) ->
    $scope.recipe = data
  )
]).
  filter 'markdown', ['$sce', ($sce) ->
    return (val) ->
      $sce.trustAsHtml(val)
  ]
