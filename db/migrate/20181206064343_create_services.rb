class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :spa_id
      t.string :service_name
      t.string :service_image_id
      t.integer :service_type
      t.integer :vote

      t.timestamps
    end
  end
end
