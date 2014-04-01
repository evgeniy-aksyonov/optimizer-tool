class Tool.Views.ReportGeneration extends Backbone.View

  template: JST['schools/report_generation']
  model: 'school'
  # tagName: 'tr'

  initialize: ->
    @render()
    @

  render: ->
    $(@el).html(@template(school: @model))
    @