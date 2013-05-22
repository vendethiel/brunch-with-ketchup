locals =
  title: 'With Ketchup'

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
        before: []

    templates:
      joinTo:
        'js/dontUseMe' : /^app/ #slutty hack for Jade-auto-compiling

  plugins:
    jade: {+pretty, locals}
    jade_angular:
      modules_folder: 'templates'
      locals: locals

  server:
    path: 'server.ls'
    port: 3333
    base: ''
    run: false

    db: "#protocol://#user:#password@#host/#database"

  # Enable or disable minifying of result js / css files.
  # minify: true
