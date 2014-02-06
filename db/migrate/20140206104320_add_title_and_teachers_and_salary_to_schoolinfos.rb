class AddTitleAndTeachersAndSalaryToSchoolinfos < ActiveRecord::Migration
  def change
    add_column :schoolinfos, :title, :string
    add_column :schoolinfos, :teachers, :integer
    add_column :schoolinfos, :salary, :integer
  end
end
