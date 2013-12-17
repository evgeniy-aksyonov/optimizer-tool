class AddFirstnameToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :firstname, :string
  end
end
