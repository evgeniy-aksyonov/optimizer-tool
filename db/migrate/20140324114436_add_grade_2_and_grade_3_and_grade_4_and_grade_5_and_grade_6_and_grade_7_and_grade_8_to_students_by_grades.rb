class AddGrade2AndGrade3AndGrade4AndGrade5AndGrade6AndGrade7AndGrade8ToStudentsByGrades < ActiveRecord::Migration
  def change
    add_column :students_by_grades, :grade_2, :integer
    add_column :students_by_grades, :grade_3, :integer
    add_column :students_by_grades, :grade_4, :integer
    add_column :students_by_grades, :grade_5, :integer
    add_column :students_by_grades, :grade_6, :integer
    add_column :students_by_grades, :grade_7, :integer
    add_column :students_by_grades, :grade_8, :integer
  end
end
