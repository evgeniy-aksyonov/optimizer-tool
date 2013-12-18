class Tool.Views.TeachersIndex extends Backbone.View

  template: JST['schools/teachers_index']

  initialize: ->
    # router = new Tool.Routers.MainRouter()
    # @collection.on('sync', @addAllSchools)
    @collection = new Tool.Collections.Teachers()
    @collection.fetch()
    @collection.on('add', @addOneTeacher, this)
    @collection.on('reset', @addOneTeacher)

  render: ->
    $(@el).html(@template(teachers: @collection))
    @collection.each(@addOneTeacher)
    this

  addAllTeachers: =>
    @collection.each(@addOneTeacher)

  addOneTeacher: (teacher) =>
    view = new Tool.Views.Teacher(model: teacher)
    @$('#teachers').append(view.render().el)
    
