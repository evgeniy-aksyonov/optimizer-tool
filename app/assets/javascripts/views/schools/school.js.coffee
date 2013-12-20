class Tool.Views.School extends Backbone.View

  template: JST['schools/school']
  tagName: 'tr'
  
  events:
    'click a.school_title' : 'showSchoolDetails'
    'click a.delete'       : 'destroy'

  initialize: ->
    @model.on('change', @render, this)
    @model.on('reset', @render, this)
    @model.on('destroy', @remove, this)

  showSchoolDetails: (id) ->
    console.log 'desc fro view'
    router = new Tool.Routers.MainRouter()
    router.navigate('school_description', {trigger: true})

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