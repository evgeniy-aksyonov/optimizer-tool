class Tool.Views.MainPage extends Backbone.View

  template: JST['main_page']

# old
  # initialize: ->
    # router = new Tool.Routers.MainRouter()
    # @collection.on('sync', @addAllSchools)
    # @collection.on('add', @addOneSchool, this)
    # @collection.on('reset', @addOneSchool)

# new
  initialize: ->
    @collection = new Tool.Collections.Schools()
    @collection.fetch()
    @collection.on('add', @addOneSchool, this)
    @collection.on('reset', @addOneSchool)

  render: ->
    $(@el).html(@template(schools: @collection))
    @collection.each(@addOneSchool)
    this

  addAllSchools: =>
    @collection.each(@addOneSchool)

  addOneSchool: (school) =>
    view = new Tool.Views.School(model: school)
    @$('#schools').append(view.render().el)

  	
