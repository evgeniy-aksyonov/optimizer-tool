class Tool.Routers.MainRouter extends Backbone.Router
	routes:
		''               : 'index'
		'form'           : 'form_school'
		'student_form'   : 'form_student'
		'schools/:id'    : 'show'

	initialize: ->
		@collection = new Tool.Collections.Schools()
		@formSchoolView = new Tool.Views.FormSchool()
		@formStudentView = new Tool.Views.FormStudent()
		@collection.fetch()

	index: ->
		view = new Tool.Views.SchoolsIndex(collection: @collection)
		$('#container').html( view.render().el )

	show: (id) ->
		console.log "school view #{id}"
		# schools = new Tool.Models.Schools
		# schools.fetch()

	form_school: ->
		$('#form').html(@formSchoolView.render().el)

	form_student: ->
		$('#form_student').html(@formStudentView.render().el)