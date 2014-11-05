# app/assets/javascripts/angular/controllers/JobIndexCtrl.js.coffee

@jobber.controller 'JobIndexCtrl', ["$scope", "Job", ($scope, Job) ->
  $scope.jobs = Job.query()

  $scope.addJob = ->
    job = Job.save($scope.newJob)
    $scope.jobs.push(job)
    $scope.newJob = {}

  $scope.viewJob = (id) ->
    $location.url "/jobs/#{id}"
]