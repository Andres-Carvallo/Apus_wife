class AddBabyToBreastfeedings < ActiveRecord::Migration[5.2]
  def change
    add_reference :breastfeedings, :baby, foreign_key: true
  end
end
