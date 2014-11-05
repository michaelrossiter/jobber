# app/assets/javascripts/angular/controllers/JobIndexCtrl.js.coffee

@jobber.controller 'JobIndexCtrl', ['$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.jobs = []
  $http.get('./jobs.json').success((data) ->
    $scope.jobs = data
  )
  $scope.viewJob = (id) ->
    $location.url "/jobs/#{id}"
]