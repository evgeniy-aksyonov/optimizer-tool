window.Tool =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
  	new Tool.Routers.Schools()
  	Backbone.history.start({pushState: true})

$(document).ready ->
  Tool.initialize()
