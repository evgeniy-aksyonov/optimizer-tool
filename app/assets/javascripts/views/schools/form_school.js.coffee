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
			people_count:
				students: $('#students_count').val()
				teachers: $('#teachers_count').val()

      # students: +$('#students_count').val()
      # teachers: +$('#teachers_count').val()
  	collection.create attributes,
  		wait: true
			error: @handleError

  		success: -> 
				Tool.routers.main.navigate("/schools_index", true)

  handleError: (school, response) ->
  	if response.status == 422
  		errors = $.parseJSON(response.responseText).errors
  		for attribute, messages of errors
  			alert "#{attribute} #{message}" for message in messages
