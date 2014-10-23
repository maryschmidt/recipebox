@recipebox = angular.module('recipebox', [])

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
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])
