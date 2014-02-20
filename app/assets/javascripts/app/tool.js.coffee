#= require_self
#= require_tree ./routers

window.App =
  Routers : {}
  # Views : {}
  # Collections : {}
  # Models : {}
  # Vent : _.clone(Backbone.Events)
  initialize: ->
    new App.Routers.MainRouter()
    Backbone.history.start()
