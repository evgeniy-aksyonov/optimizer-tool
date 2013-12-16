window.Tool =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Tool.Routers.Schools()
  	Backbone.history.start()

$(document).ready ->
  Tool.initialize()
