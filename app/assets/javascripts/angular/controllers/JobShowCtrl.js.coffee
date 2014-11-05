# app/assets/javascripts/angular/controllers/JobShowCtrl.js.coffee

@jobber.controller 'JobShowCtrl', ['$scope', '$http', '$routeParams', ($scope, $http, $routeParams) ->
  $http.get("./jobs/#{$routeParams.id}.json").success((data) ->
    $scope.job = data
  )
]