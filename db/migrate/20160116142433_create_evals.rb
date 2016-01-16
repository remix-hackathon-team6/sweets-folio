class CreateEvals < ActiveRecord::Migration
  def change
    create_table :evals do |t|
      t.integer :user_id
      t.integer :shouhin_id
      t.text :comment
      t.integer :evaluation

      t.timestamps null: false
    end
  end
end
