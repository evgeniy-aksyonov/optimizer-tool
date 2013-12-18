class Tool.Views.FormTeacher extends Backbone.View

  template: JST['schools/form_teacher']
  className: 'form-inner'

  events:
  	'submit #new_teacher': 'createTeacher'

  render: ->
  	@$el.html(@template())
  	@

  createTeacher: (event) ->
  	collection = new Tool.Collections.Teachers()
  	collection.fetch()
  	event.preventDefault()
  	attributes = 
      firstname: $('#new_teacher_firstname').val()
      school_id: +$('#new_teacher_school_id').val()
  	collection.create attributes,
  		wait: true
  		success: -> 
  			$('#new_teacher')[0].reset()
  		error: @handleError

  handleError: (teacher, response) ->
  	if response.status == 422
  		errors = $.parseJSON(response.responseText).errors
  		for attribute, messages of errors
  			alert "#{attribute} #{message}" for message in messages
  