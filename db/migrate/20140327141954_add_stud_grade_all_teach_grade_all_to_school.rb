class AddStudGradeAllTeachGradeAllToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :stud_grade_all, :integer
    add_column :schools, :teach_grade_all, :integer
  end
end
