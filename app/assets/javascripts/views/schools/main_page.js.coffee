class Tool.Views.MainPage extends Backbone.View

  template: JST['main_page']

  # initialize: ->
    # router = new Tool.Routers.MainRouter()
    # @collection.on('sync', @addAllSchools)
    # @collection.on('add', @addOneSchool, this)
    # @collection.on('reset', @addOneSchool)

  events:
    'click a.schools_index'  : 'schools_index'
    'click a.students_index' : 'students_index'
    'click a.teachers_index' : 'teachers_index'

  # form_school: ->
  #   router = new Tool.Routers.MainRouter()
  #   router.navigate('form_school', {trigger: true})

  # form_student: ->
  #   router = new Tool.Routers.MainRouter()
  #   router.navigate('form_student', {trigger: true})

  # form_teacher: ->
  #   router = new Tool.Routers.MainRouter()
  #   router.navigate('form_teacher', {trigger: true})

  schools_index: ->
    router = new Tool.Routers.MainRouter()
    router.navigate('schools_index', {trigger: true})

  students_index: ->
    router = new Tool.Routers.MainRouter()
    router.navigate('students_index', {trigger: true})

  teachers_index: ->
    router = new Tool.Routers.MainRouter()
    router.navigate('teachers_index', {trigger: true})

  render: ->
  	$(@el).html(@template())
  	this

  	
