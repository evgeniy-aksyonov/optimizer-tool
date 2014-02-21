class Tool.Views.SchoolDescription extends Backbone.View

  template: JST['schools/school_description']
  model: 'school'
  # tagName: 'tr'

	# initialize: ->
	# 	@collection = new Tool.Collections.Schools()
	# 	@collection.fetch()
	# 	@model.on('add', @render, this)
	# 	@model.on('reset', @render, this)

  render: ->
  	$(@el).html(@template({school: @model}))
  	@
