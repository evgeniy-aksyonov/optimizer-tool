class Tool.Views.Teacher extends Backbone.View

  template: JST['schools/teacher']
  tagName: 'tr'
  
  events: 
    'click a.delete' : 'destroy'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('reset', @render, this)
    @model.on('destroy', @remove, this)

  destroy: ->
    if confirm("Are you sure?")
      @model.destroy()
    else
      @model.trigger('change')

  remove: ->
    @$el.remove()

  render: ->
  	$(@el).html(@template(teacher: @model))
  	this