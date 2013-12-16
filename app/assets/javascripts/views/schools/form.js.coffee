class Tool.Views.Form extends Backbone.View

  template: JST['schools/form']
  className: 'form-inner'

  render: ->
  	@$el.html(@template())
  	@
  