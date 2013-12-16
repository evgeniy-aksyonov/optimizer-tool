class Tool.Routers.MainRouter extends Backbone.Router
	routes:
		''            : 'index'
		'form'        : 'form'
		'schools/:id' : 'show'

	initialize: ->
		@collection = new Tool.Collections.Schools()
		@formView = new Tool.Views.Form()
		@collection.fetch()

	index: ->
		console.log 'index page'
		view = new Tool.Views.SchoolsIndex(collection: @collection)
		$('#container').html( view.render().el )

	show: (id) ->
		console.log "school view #{id}"
		# schools = new Tool.Models.Schools
		# schools.fetch()

	form: ->
		$('#form').html(@formView.render().el)