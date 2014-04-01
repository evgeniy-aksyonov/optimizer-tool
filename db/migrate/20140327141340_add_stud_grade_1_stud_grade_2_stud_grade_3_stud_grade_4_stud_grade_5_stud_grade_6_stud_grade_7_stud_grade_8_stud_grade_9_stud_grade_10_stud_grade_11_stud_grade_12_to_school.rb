class AddStudGrade1StudGrade2StudGrade3StudGrade4StudGrade5StudGrade6StudGrade7StudGrade8StudGrade9StudGrade10StudGrade11StudGrade12ToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :stud_grade_1, :integer
    add_column :schools, :stud_grade_2, :integer
    add_column :schools, :stud_grade_3, :integer
    add_column :schools, :stud_grade_4, :integer
    add_column :schools, :stud_grade_5, :integer
    add_column :schools, :stud_grade_6, :integer
    add_column :schools, :stud_grade_7, :integer
    add_column :schools, :stud_grade_8, :integer
    add_column :schools, :stud_grade_9, :integer
    add_column :schools, :stud_grade_10, :integer
    add_column :schools, :stud_grade_11, :integer
    add_column :schools, :stud_grade_12, :integer
  end
end
