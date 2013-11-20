#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./routers
#= require_tree ./views

window.App = 
  Routers: {}
  Views: {}
  Collections: {}
  Models: {}
  Vent: _.clone(Backbone.Events)
  initialize: ->
    new App.Routers.MainRouter()
    Backbone.history.start()