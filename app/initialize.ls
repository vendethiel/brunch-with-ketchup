for name in <[blog shared]>
	require "src/#name"

app = angular.module 'app' <[
	ui
	myService
	blog shared
]>

app.config !($locationProvider) ->
	$locationProvider.html5Mode true

app.run !(myService) ->
	myService.doStuff!