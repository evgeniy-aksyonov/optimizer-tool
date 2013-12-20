class Tool.Views.FormSchool extends Backbone.View

  template: JST['schools/form_school']
  className: 'form-inner'

  events:
  	'submit #new_school': 'createSchool'

  render: ->
  	@$el.html(@template())
  	@

  createSchool: (event) ->
  	collection = new Tool.Collections.Schools()
  	collection.fetch()
  	event.preventDefault()
  	attributes = 
      title: $('#new_school_title').val()
      studcount: $('#students_count').val()
      # students: +$('#students_count').val()
      # teachers: +$('#teachers_count').val()
  	collection.create attributes,
  		wait: true
  		success: -> 
  			$('#new_school')[0].reset()
  		error: @handleError

  handleError: (school, response) ->
  	if response.status == 422
  		errors = $.parseJSON(response.responseText).errors
  		for attribute, messages of errors
  			alert "#{attribute} #{message}" for message in messages
  