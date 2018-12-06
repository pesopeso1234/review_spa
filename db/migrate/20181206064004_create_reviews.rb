class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :spa_id
      t.date :bathing_date
      t.integer :review_all_rating
      t.integer :review_bath_rating
      t.integer :review_meal_rating
      t.integer :review_other_rating
      t.text :spa_impression
      t.integer :service_id
      t.text :service_impression

      t.timestamps
    end
  end
end
