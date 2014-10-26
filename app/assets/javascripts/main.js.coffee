@recipebox = angular.module('recipebox', ['ngRoute'])

@recipebox.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/recipes', {
      templateUrl: '../templates/recipes/index.html',
      controller: 'RecipeIndexCtrl'
    }).
    when('/recipes/:id', {
      templateUrl: '../templates/recipes/show.html',
      controller: 'RecipeShowCtrl'
    }).
    otherwise({
      templateUrl: '../templates/recipes/index.html',
      controller: 'RecipeIndexCtrl'
    })
])

@recipebox.filter 'markdown', ($sce) ->
  return (val) ->
    $sce.trustAsHtml(val)
