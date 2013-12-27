class AddSalaryToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :salary, :integer
  end
end
