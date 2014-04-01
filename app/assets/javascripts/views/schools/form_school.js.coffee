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
      # teachers: +$('.teachers-wrapper .input-group .grade_all').val()
      # students: +$('.students-wrapper .input-group .grade_all').val()

      stud_grade_all: +$('.students-wrapper .input-group .grade_all').val()
      teach_grade_all: +$('.teachers-wrapper .input-group .grade_all').val()

      stud_grade_k: +$('.students-wrapper .input-group .grade_k').val()
      stud_grade_1: +$('.students-wrapper .input-group .grade_1').val()
      stud_grade_2: +$('.students-wrapper .input-group .grade_2').val()
      stud_grade_3: +$('.students-wrapper .input-group .grade_3').val()
      stud_grade_4: +$('.students-wrapper .input-group .grade_4').val()
      stud_grade_5: +$('.students-wrapper .input-group .grade_5').val()
      stud_grade_6: +$('.students-wrapper .input-group .grade_6').val()
      stud_grade_7: +$('.students-wrapper .input-group .grade_7').val()
      stud_grade_8: +$('.students-wrapper .input-group .grade_8').val()
      stud_grade_9: +$('.students-wrapper .input-group .grade_9').val()
      stud_grade_10: +$('.students-wrapper .input-group .grade_10').val()
      stud_grade_11: +$('.students-wrapper .input-group .grade_11').val()
      stud_grade_12: +$('.students-wrapper .input-group .grade_12').val()

      teach_grade_k: +$('.teachers-wrapper .input-group .grade_k').val()
      teach_grade_1: +$('.teachers-wrapper .input-group .grade_1').val()
      teach_grade_2: +$('.teachers-wrapper .input-group .grade_2').val()
      teach_grade_3: +$('.teachers-wrapper .input-group .grade_3').val()
      teach_grade_4: +$('.teachers-wrapper .input-group .grade_4').val()
      teach_grade_5: +$('.teachers-wrapper .input-group .grade_5').val()
      teach_grade_6: +$('.teachers-wrapper .input-group .grade_6').val()
      teach_grade_7: +$('.teachers-wrapper .input-group .grade_7').val()
      teach_grade_8: +$('.teachers-wrapper .input-group .grade_8').val()
      teach_grade_9: +$('.teachers-wrapper .input-group .grade_9').val()
      teach_grade_10: +$('.teachers-wrapper .input-group .grade_10').val()
      teach_grade_11: +$('.teachers-wrapper .input-group .grade_11').val()
      teach_grade_12: +$('.teachers-wrapper .input-group .grade_12').val()
      averagesalary: +$('#salary').val()
      # people_count:
      #   students: +$('#students_count').val()
      #   teachers: +$('#teachers_count').val()

    collection.create attributes,
      wait: true
      error: @handleError

      success: ->
        Tool.routers.main.navigate("/", true)

  handleError: (school, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
