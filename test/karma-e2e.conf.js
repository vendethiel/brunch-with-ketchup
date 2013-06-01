basePath = '../';

files = [
  ANGULAR_SCENARIO,
  ANGULAR_SCENARIO_ADAPTER,
  //'test/e2e/**/*.js',
  'test/e2e/**/*.ls'
];

autoWatch = true;

browsers = [
	'Chrome'
];

//singleRun = true;

urlRoot = '/__karma/';

proxies = {
  '/': 'http://localhost:3333/'
};

// compile ls scripts
preprocessors = {
  '**/*.ls': 'Live'
};