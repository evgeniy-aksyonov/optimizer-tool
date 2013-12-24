class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :title
      t.references :school, index: true

      t.timestamps
    end
  end
end
