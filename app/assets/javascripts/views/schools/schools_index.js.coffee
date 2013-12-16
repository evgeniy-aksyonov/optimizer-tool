class Tool.Views.SchoolsIndex extends Backbone.View

  template: JST['schools/index']

  events:
    'submit #new_school': 'createSchool'
    'click a.form'      : 'form'

  form: ->
    router = new Tool.Routers.MainRouter()
    router.navigate('form', {trigger: true})
    Backbone.history.navigate('form', {trigger: true})

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
  	attributes = 
      title: $('#new_school_title').val()
      students: $('#students_count').val()
      staff: $('#staff_count').val()
    # console.log attributes
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

  

