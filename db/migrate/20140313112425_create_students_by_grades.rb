class CreateStudentsByGrades < ActiveRecord::Migration
  def change
    create_table :students_by_grades do |t|
      t.integer :grade_9
      t.integer :grade_10
      t.integer :grade_11
      t.integer :grade_12
      t.references :school, index: true

      t.timestamps
    end
  end
end
