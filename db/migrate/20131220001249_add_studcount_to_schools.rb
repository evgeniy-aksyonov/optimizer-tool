class AddStudcountToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :studcount, :integer
  end
end
