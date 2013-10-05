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
        before: assets.javascripts

    stylesheets:
      joinTo:
        'css/app.css': /^app/
        'css/vendor.css': /^vendor/
      order:
        before: assets.stylesheets

    templates:
      joinTo:
        'js/dontUseMe' : /^app/ #slutty hack for Jade-auto-compiling

  plugins:
    jade_angular:
      modules_folder: 'templates'
      locals: locals
      single_file: true
      single_file_name: 'js/angular_templates.js'

  # Delete that part if you do not want to use express
  server:
    path: 'server.ls'

    # configure it for your DB
    db: "mysql://root:password@localhost/ketchup"

  # Enable or disable minifying of result js / css files.
  # minify: true
