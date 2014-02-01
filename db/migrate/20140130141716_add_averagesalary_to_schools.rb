class AddAveragesalaryToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :averagesalary, :integer
  end
end
