class CreateSchoolinfos < ActiveRecord::Migration
  def change
    create_table :schoolinfos do |t|
      t.references :school, index: true
      t.integer :students

      t.timestamps
    end
  end
end
