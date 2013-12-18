window.Tool =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Tool.Routers.MainRouter()
  	Backbone.history.start(pushState: true)

$(document).ready ->
  Tool.initialize()
