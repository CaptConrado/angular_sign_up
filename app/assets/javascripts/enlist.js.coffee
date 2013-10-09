app = angular.module("Recruiter", ["ngResource"])

@EnlistCtrl = ($scope, $resource) ->
	Recruit = $resource("/recruits/:id", {id: '@id'}, {update: {method: "PUT"}})
	$scope.recruits = Recruit.query()

	$scope.addRecruit = ->
		recruit = Recruit.save($scope.newRecruit)
		$scope.recruits.push(recruit)
		$scope.newRecruit = {}

