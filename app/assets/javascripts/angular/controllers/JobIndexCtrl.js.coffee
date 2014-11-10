# app/assets/javascripts/angular/controllers/JobIndexCtrl.js.coffee

@jobber.controller 'JobIndexCtrl', ["$scope", "$location", "Job", ($scope, $location, Job) ->
  
  $scope.jobs = Job.query()

  $scope.addJob = ->
    job = Job.save($scope.newJob)
    $scope.jobs.push(job)
    $scope.newJob = {}

  $scope.deleteJob = ($index) ->
      $scope.jobs[$index].$delete()
      # Remove from the local array
      $scope.jobs.splice($index, 1)
   

  $scope.viewJob = (id) ->
    $location.url "/jobs/#{id}"
]