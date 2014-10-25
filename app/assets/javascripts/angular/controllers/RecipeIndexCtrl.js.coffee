@recipebox.controller 'RecipeIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.recipes = []

  $http.get('./recipes.json').success((data) ->
    $scope.filters = { }
    $scope.recipes = data
  )

  $scope.viewRecipe = (id) ->
    $location.url "/recipes/#{id}"
]
