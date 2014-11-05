# spec/javascripts/controllers_spec.js.coffee

describe "Jobber controllers", ->
  beforeEach module("jobber")

  describe "JobIndexCtrl", ->
    it "should set jobs to an empty array", inject(($controller) ->
      scope = {}
      ctrl = $controller("JobIndexCtrl",
        $scope: scope
      )
      expect(scope.jobs.length).toBe 0
    )