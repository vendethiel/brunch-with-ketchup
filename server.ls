require! <[orm fs express]>
{config} = require './config'

module.exports = app = express!

/*
 * Configuration
 */
PORT = config.server.port ? 3333
# brunch's public path
PUBLIC_PATH = config.paths?public ? 'public'

/*
 * Set up ORM
 */
app.use orm.express config.server.db,
	define: !(db, models) ->
		require('./server/models') db, models

/**
 * Expose server to Brunch's watcher
 */
app.startServer = !->
	app.listen PORT, !-> console.log "Express started"

/*
 * Routing : Brunch catch-all and our API
 */
app.use express.static PUBLIC_PATH
app.use '/api' require './server/api'

/**
 * Index serving (catch-all route) for angular's html5Mode
 * Read index until it's available
 *  (should be using a helper in production)
 */
app.use !(req, res) ->
	res.writeHeader 200 'Content-Type': 'text/html'
	res.end fs.readFileSync "#PUBLIC_PATH/index.html"