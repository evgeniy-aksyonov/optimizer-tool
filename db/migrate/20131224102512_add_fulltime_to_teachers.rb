class AddFulltimeToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :fulltime, :boolean
  end
end
