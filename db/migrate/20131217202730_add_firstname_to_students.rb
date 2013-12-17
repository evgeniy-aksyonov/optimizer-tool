class AddFirstnameToStudents < ActiveRecord::Migration
  def change
    add_column :students, :firstname, :string
  end
end
