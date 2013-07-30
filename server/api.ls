require! <[express express-resource]>

app = express!

/**
 * Read payload (body)
 * Allow PUT/PATCH/DELETE etc
 */
app.use express.bodyParser!
app.use express.methodOverride!

/**
 * Cookies and Session
 */
app.use express.cookieParser!
app.use express.session secret: 'express-with-ketchup'

/**
 * Serve resources
 */
#app.resource 'articles' require './api/articles'

module.exports = app