class Tool.Views.FormStudent extends Backbone.View

  template: JST['schools/form_student']
  className: 'form-inner'

  events:
  	'submit #new_student': 'createStudent'

  render: ->
  	@$el.html(@template())
  	@

  createStudent: (event) ->
  	collection = new Tool.Collections.Students()
  	collection.fetch()
  	event.preventDefault()
  	attributes = 
      firstname: $('#new_student_firstname').val()
      school_id: +$('#new_student_school_id').val()
      # students: +$('#students_count').val()
      # teachers: +$('#teachers_count').val()
  	collection.create attributes,
  		wait: true
  		success: -> 
  			$('#new_student')[0].reset()
  		error: @handleError

  handleError: (student, response) ->
  	if response.status == 422
  		errors = $.parseJSON(response.responseText).errors
  		for attribute, messages of errors
  			alert "#{attribute} #{message}" for message in messages
  