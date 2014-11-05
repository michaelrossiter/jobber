# app/assets/javascripts/angular/controllers/JobIndexCtrl.js.coffee

@jobber.controller 'JobIndexCtrl', ['$scope', '$location', '$resource', ($scope, $location, $resource) ->
  Job = $resource("/jobs/:id", {id: "@id"}, {update: {method: "PUT"}})
  $scope.jobs = Job.query()

  $scope.addJob = ->
    Job.save($scope.newJob)
    $scope.jobs.push(job)
    $scope.newJob = {}

  $scope.viewJob = (id) ->
    $location.url "/jobs/#{id}"
]