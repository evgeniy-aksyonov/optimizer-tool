class Tool.Views.SchoolsIndex extends Backbone.View

  template: JST['schools/schools_index']

  initialize: ->
    # router = new Tool.Routers.MainRouter()
    # @collection.on('sync', @addAllSchools)
    @collection = new Tool.Collections.Schools()
    @collection.fetch()
    @collection.on('add', @addOneSchool, @)
    @collection.on('reset', @addOneSchool)

  render: ->
  	$(@el).html(@template(schools: @collection))
  	@collection.each(@addOneSchool)
  	@

  addAllSchools: =>
  	@collection.each(@addOneSchool)

  addOneSchool: (school) =>
  	view = new Tool.Views.School(model: school)
  	@$('#schools').append(view.render().el)
  	
