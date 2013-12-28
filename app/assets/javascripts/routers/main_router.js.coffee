class Tool.Routers.MainRouter extends Backbone.Router
	routes:
		''                          : 'main_page'
		'schools_index'	            : 'schools_index'
		'schools_index'             : 'schools_index'
		'teachers_index'            : 'teachers_index'
		'form_school'               : 'form_school'
		'form_student'              : 'form_student'
		'form_teacher'              : 'form_teacher'
		'school_description/:id'    : 'school_description'
		# 'schools/:id'     : 'show'

	initialize: ->
		@formSchoolView = new Tool.Views.FormSchool()
		@formStudentView = new Tool.Views.FormStudent()
		@formTeacherView = new Tool.Views.FormTeacher()

	school_description: (id) ->
		console.log "desc from router #{id}"
		view = new Tool.Views.SchoolDescription()
		$('#container').html(view.render().el)

	main_page: ->
		view = new Tool.Views.MainPage()
		$('#container').html(view.render().el)

	schools_index: ->
		view = new Tool.Views.SchoolsIndex()
		$('#container').html(view.render().el)

	students_index: ->
		view = new Tool.Views.StudentsIndex()
		$('#container').html(view.render().el)

	teachers_index: ->
		view = new Tool.Views.TeachersIndex()
		$('#container').html(view.render().el)
	
	form_school: ->
		$('#container').html(@formSchoolView.render().el)

	form_student: ->
		$('#container').html(@formStudentView.render().el)

	form_teacher: ->
		$('#container').html(@formTeacherView.render().el)
