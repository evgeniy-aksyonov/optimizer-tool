class CreateTeachersByGrades < ActiveRecord::Migration
  def change
    create_table :teachers_by_grades do |t|
      t.references :school, index: true

      t.timestamps
    end
  end
end
