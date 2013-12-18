class Tool.Views.SchoolsIndex extends Backbone.View

  template: JST['schools/index']

  initialize: ->
    # router = new Tool.Routers.MainRouter()
    # @collection.on('sync', @addAllSchools)
    @collection.on('add', @addOneSchool, this)
    @collection.on('reset', @addOneSchool)

  events:
    'click a.form_school'   : 'form_school'
    'click a.form_student'  : 'form_student'
    'click a.form_teacher'  : 'form_teacher'

  form_school: ->
    router = new Tool.Routers.MainRouter()
    router.navigate('form_school', {trigger: true})

  form_student: ->
    router = new Tool.Routers.MainRouter()
    router.navigate('form_student', {trigger: true})

  form_teacher: ->
    router = new Tool.Routers.MainRouter()
    router.navigate('form_teacher', {trigger: true})

  render: ->
  	$(@el).html(@template(schools: @collection))
  	@collection.each(@addOneSchool)
  	this

  addAllSchools: =>
  	@collection.each(@addOneSchool)

  addOneSchool: (school) =>
  	view = new Tool.Views.School(model: school)
  	@$('#schools').append(view.render().el)
  	
