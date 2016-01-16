class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :user_name
      t.string :email
      t.string :password
      t.string :user_image
      t.text :user_info
      t.integer :shouhin_id
      t.boolean :pastry

      t.timestamps null: false
    end
  end
end
