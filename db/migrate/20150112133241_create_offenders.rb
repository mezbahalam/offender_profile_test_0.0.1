class CreateOffenders < ActiveRecord::Migration
  def change
    create_table :offenders do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.string :address
      t.string :mobile_no
      t.string :occupation
      t.string :religion
      t.string :educational_background
      t.string :crimes
      t.string :father_name
      t.string :mother_name
      t.string :father_occupation
      t.string :mother_occupation
      t.string :family_income
      t.string :psychological_status
      t.string :image

      t.timestamps
    end
  end
end
