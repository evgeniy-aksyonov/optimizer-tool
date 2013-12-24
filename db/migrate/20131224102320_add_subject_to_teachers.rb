class AddSubjectToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :subject, :string
  end
end
