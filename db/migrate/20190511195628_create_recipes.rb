class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
