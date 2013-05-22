for name in <[myModule shared]>
	require "src/#name"

app = angular.module 'app' <[
	ui
	myService
	myModule shared
]>

app.config !($locationProvider) ->
	$locationProvider.html5Mode true

app.run !(myService) ->
	myService.doStuff!