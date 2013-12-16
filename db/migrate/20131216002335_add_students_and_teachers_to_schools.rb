class AddStudentsAndTeachersToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :students, :integer
    add_column :schools, :teachers, :integer
  end
end
