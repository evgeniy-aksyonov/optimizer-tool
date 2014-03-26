class AddGradeKAndGrade1AndGrade2AndGrade3AndGrade4AndGrade5AndGrade6AndGrade7AndGrade8AndGrade9AndGrade10AndGrade11AndGrade12ToTeachersByGrade < ActiveRecord::Migration
  def change
    add_column :teachers_by_grades, :grade_k, :integer
    add_column :teachers_by_grades, :grade_1, :integer
    add_column :teachers_by_grades, :grade_2, :integer
    add_column :teachers_by_grades, :grade_3, :integer
    add_column :teachers_by_grades, :grade_4, :integer
    add_column :teachers_by_grades, :grade_5, :integer
    add_column :teachers_by_grades, :grade_6, :integer
    add_column :teachers_by_grades, :grade_7, :integer
    add_column :teachers_by_grades, :grade_8, :integer
    add_column :teachers_by_grades, :grade_9, :integer
    add_column :teachers_by_grades, :grade_10, :integer
    add_column :teachers_by_grades, :grade_11, :integer
    add_column :teachers_by_grades, :grade_12, :integer
  end
end
