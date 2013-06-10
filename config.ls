locals =
  title: 'With Ketchup'

assets =
  javascripts: []
  stylesheets: []

exports.config =
  paths:
    public: '_public'
  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor/
      order:
        before: []

    stylesheets:
      joinTo:
        'css/app.css': /^app/
        'css/vendor.css': /^vendor/
      order:
        before: assets.javascripts

    templates:
      joinTo:
        'js/dontUseMe' : /^app/ #slutty hack for Jade-auto-compiling
      order:
        before: assets.stylesheets

  plugins:
    jade: {+pretty, locals}
    jade_angular:
      modules_folder: 'templates'
      locals: locals
    javascripts: assets.javascripts
    stylesheets: assets.stylesheets

  # Delete that part if you do not want to use express
  server:
    path: 'server.ls'
    port: 3333
    base: ''
    run: false

    # configure it for your DB
    db: "#protocol://#user:#password@#host/#database"

  # Enable or disable minifying of result js / css files.
  # minify: true
