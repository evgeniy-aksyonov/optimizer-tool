class Tool.Views.EnrollmentTable extends Backbone.View

  template: JST['schools/enrollment_table']

  render: ->
    $(@el).html(@template(school: @model))
    @
    
