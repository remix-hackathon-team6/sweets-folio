class CreateShouhins < ActiveRecord::Migration
  def change
    create_table :shouhins do |t|
      t.integer :shouhin_id
      t.string :shouhin_name
      t.text :shouhin_info
      t.integer :shouhin_eval
      t.integer :user_id
      t.string :shouhin_image_1
      t.string :shouhin_image_2
      t.string :shouhin_image_3
      t.string :shouhin_image_4

      t.timestamps null: false
    end
  end
end
