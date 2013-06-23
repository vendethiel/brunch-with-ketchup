module.exports = !($routeProvider) ->
	$routeProvider.when '/articles',
		template-url: 'src/blog/templates/articles/index.html'
		controller: 'ArticleCtrl'