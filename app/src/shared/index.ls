# shared.templates implies that you're using
# the jade-angularjs-brunch plugin
angular.module 'shared' <[myService shared.templates]>

require './controllers'
require './services/my-service'