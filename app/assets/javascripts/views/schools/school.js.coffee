class Tool.Views.School extends Backbone.View

  template: JST['schools/school']
  tagName: 'li'
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
  	$(@el).html(@template(school: @model))
  	this