# app/assets/javascripts/main.js.coffee

# This line is related to our Angular app, not to our
# HomeCtrl specifically. This is basically how we tell
# Angular about the existence of our application.

@jobber = angular.module('jobber', ['ngResource'])

# This routing directive tells Angular about the default
# route for our application. The term "otherwise" here
# might seem somewhat awkward, but it will make more
# sense as we add more routes to our application.

@jobber.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/jobs', {
      templateUrl: '../templates/jobs/index.html',
      controller: 'JobIndexCtrl'
    }).when('/jobs/:id', {
      templateUrl: '../templates/jobs/show.html',
      controller: 'JobShowCtrl'
    }).otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    }) 
])
