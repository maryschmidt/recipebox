@recipebox.controller 'RecipeNewCtrl', ['$scope', '$http', ($scope, $http) ->
  $http.get("./recipes/new.json").success((data) ->
    $scope.categories = data
    $scope.recipeName = null
    $scope.categoryId = null
  )

  $scope.createRecipe = ->
    data = { name: $scope.recipeName, category_id: $scope.categoryId }
    $http.post("./recipes.json", data).success ->
      window.location.href = '/'
]
