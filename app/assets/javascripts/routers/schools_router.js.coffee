class Tool.Routers.Schools extends Backbone.Router
	routes:
		''            : 'index'
		'schools/:id' : 'show'

	initialize: ->
		@collection = new Tool.Collections.Schools()
		@collection.fetch()

	index: ->
		console.log 'index page'
		view = new Tool.Views.SchoolsIndex(collection: @collection)
		$('#container').html( view.render().el )

	show: (id) ->
		console.log "school view #{id}"
		# schools = new Tool.Models.Schools
		# schools.fetch()