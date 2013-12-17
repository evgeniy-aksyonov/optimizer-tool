class Tool.Views.Form extends Backbone.View

  template: JST['schools/form']
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
      students: +$('#students_count').val()
      teachers: +$('#teachers_count').val()
    console.log 111, attributes
  	collection.create attributes,
  		wait: true
  		success: -> 
  			# alert(attributes.title + " was created successfully!")
  			$('#new_school')[0].reset()
  		error: @handleError

  handleError: (school, response) ->
  	if response.status == 422
  		errors = $.parseJSON(response.responseText).errors
  		for attribute, messages of errors
  			alert "#{attribute} #{message}" for message in messages
  