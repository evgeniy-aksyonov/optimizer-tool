# TODO: ozelenyuk|11/28/2013| Provide Google closure or requirejs for the namespace

window.Tool =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  routers: {}

  initialize: ->
  	this.routers.main = new Tool.Routers.MainRouter()
  	Backbone.history.start(pushState: false)

$(document).ready ->
  Tool.initialize()
