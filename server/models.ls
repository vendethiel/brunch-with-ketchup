module.exports = !(db, models) ->
	models.anime = db.define 'tablename',
		name: String