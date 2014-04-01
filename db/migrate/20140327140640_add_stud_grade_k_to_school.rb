class AddStudGradeKToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :stud_grade_k, :integer
  end
end
