class AddBreastfeedingToBaby < ActiveRecord::Migration[5.2]
  def change
    add_reference :babies, :breastfeeding, foreign_key: true
  end
end
