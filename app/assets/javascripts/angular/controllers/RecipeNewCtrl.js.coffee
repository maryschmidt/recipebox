@recipebox.controller 'RecipeNewCtrl', ['$scope', '$http', ($scope, $http) ->
  $http.get("./recipes/new.json").success((data) ->
    $scope.categories = data
    $scope.recipeName = null
    $scope.recipeDescription = null
    $scope.recipeBody = null
    $scope.categoryId = null
  )

  $scope.createRecipe = ->
    data = {
      name: $scope.recipeName,
      description: $scope.recipeDescription,
      body: $scope.recipeBody,
      category_id: $scope.categoryId
    }
    $http.post("./recipes.json", data).success ->
      window.location.href = '/'
]
