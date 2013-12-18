class Tool.Views.StudentsIndex extends Backbone.View

  template: JST['schools/students_index']

  initialize: ->
    # router = new Tool.Routers.MainRouter()
    # @collection.on('sync', @addAllSchools)
    @collection = new Tool.Collections.Students()
    @collection.fetch()
    @collection.on('add', @addOneStudent, this)
    @collection.on('reset', @addOneStudent)

  render: ->
    $(@el).html(@template(students: @collection))
    @collection.each(@addOneStudent)
    this

  addAllStudents: =>
    @collection.each(@addOneStudent)

  addOneStudent: (student) =>
    view = new Tool.Views.Student(model: student)
    @$('#students').append(view.render().el)
    
