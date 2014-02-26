class Tool.Views.ReportGeneration extends Backbone.View

  template: JST['schools/report_generation']

  render: ->
  	$(@el).html(@template())
  	this