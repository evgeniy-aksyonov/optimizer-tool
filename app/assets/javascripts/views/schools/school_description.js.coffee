class Tool.Views.SchoolDescription extends Backbone.View

  template: JST['schools/school_description']
  # tagName: 'tr'
  
  # initialize: ->
  #   @model.on('change', @render, this)
  #   @model.on('reset', @render, this)
  #   @model.on('destroy', @remove, this)

  render: ->
  	$(@el).html(@template(school: @model))
  	@