class App.Views.Footer extends Backbone.View
  
  template: HandlebarsTemplates['app/templates/footer']
  
  render: ->
    @$el.html(@template())
    @
  
