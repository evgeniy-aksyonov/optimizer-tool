class AddGradeKAndGrade1ToStudentsByGrades < ActiveRecord::Migration
  def change
    add_column :students_by_grades, :grade_K, :integer
    add_column :students_by_grades, :grade_1, :integer
  end
end
