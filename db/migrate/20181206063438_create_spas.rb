class CreateSpas < ActiveRecord::Migration[5.2]
  def change
    create_table :spas do |t|
      t.string :spa_name
      t.string :spa_image_id
      t.integer :area_id
      t.string :address
      t.string :phone_number
      t.string :regular_holiday
      t.text :website
      t.date :opening_day
      t.text :charge
      t.float :all_rating
      t.float :bath_rating
      t.float :meal_rating
      t.float :other_rating

      t.timestamps
    end
  end
end
