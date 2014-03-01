class Tool.Views.ReportGeneration extends Backbone.View

  template: JST['schools/report_generation']
  model: 'school'

  render: ->
  	$(@el).html(@template({school: @model}))
  	this