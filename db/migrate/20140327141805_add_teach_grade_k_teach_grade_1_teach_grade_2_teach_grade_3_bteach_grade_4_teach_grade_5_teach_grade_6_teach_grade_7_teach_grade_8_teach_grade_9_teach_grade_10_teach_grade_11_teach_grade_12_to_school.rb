class AddTeachGradeKTeachGrade1TeachGrade2TeachGrade3BteachGrade4TeachGrade5TeachGrade6TeachGrade7TeachGrade8TeachGrade9TeachGrade10TeachGrade11TeachGrade12ToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :teach_grade_k, :integer
    add_column :schools, :teach_grade_1, :integer
    add_column :schools, :teach_grade_2, :integer
    add_column :schools, :teach_grade_3, :integer
    add_column :schools, :teach_grade_4, :integer
    add_column :schools, :teach_grade_5, :integer
    add_column :schools, :teach_grade_6, :integer
    add_column :schools, :teach_grade_7, :integer
    add_column :schools, :teach_grade_8, :integer
    add_column :schools, :teach_grade_9, :integer
    add_column :schools, :teach_grade_10, :integer
    add_column :schools, :teach_grade_11, :integer
    add_column :schools, :teach_grade_12, :integer
  end
end
