class Tool.Views.SchoolsIndex extends Backbone.View

  template: JST['schools/index']

  events:
  	'submit #new_school': 'createSchool'

  initialize: ->
  	# @collection.on('sync', @addAllSchools)
  	@collection.on('add', @addOneSchool, this)
  	@collection.on('reset', @addOneSchool)

  render: ->
  	$(@el).html(@template(schools: @collection))
  	@collection.each(@addOneSchool)
  	this

  addAllSchools: =>
  	@collection.each(@addOneSchool)

  addOneSchool: (school) =>
  	view = new Tool.Views.School(model: school)
  	@$('#schools').append(view.render().el)
  	
  createSchool: (event) ->
  	event.preventDefault()
  	attributes = title: $('#new_school_title').val()
  	@collection.create attributes,
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

