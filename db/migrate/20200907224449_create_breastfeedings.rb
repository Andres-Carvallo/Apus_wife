class CreateBreastfeedings < ActiveRecord::Migration[5.2]
  def change
    create_table :breastfeedings do |t|
      t.float :feeding_quantity
      t.float :feeding_time

      t.timestamps
    end
  end
end
