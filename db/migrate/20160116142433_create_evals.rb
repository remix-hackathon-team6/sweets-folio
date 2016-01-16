class CreateEvals < ActiveRecord::Migration
  def change
    create_table :evals do |t|
      t.references :user_id, index: true, null: false
      t.references :shouhin_id, index: true, null:false
      t.text :comment
      t.integer :evaluation

      t.timestamps null: false
    end
  end
end
