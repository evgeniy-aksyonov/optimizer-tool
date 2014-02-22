class Tool.Views.SchoolDescription extends Backbone.View

  template: JST['schools/school_description']
  model: 'school'
  # tagName: 'tr'

  initialize: ->
    @render()
    @

  render: ->
    $(@el).html(@template({school: @model}))
    @
