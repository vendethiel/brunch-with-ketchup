for <[blog shared]>
	require "src/#{..}"

app = angular.module 'app' <[
	myService
	blog shared
]>

app.config ($locationProvider) !->
	$locationProvider.html5Mode true

app.run (myService) !->
	myService.doStuff!