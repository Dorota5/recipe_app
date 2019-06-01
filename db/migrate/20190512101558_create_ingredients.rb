class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
     add_index :ingredients, [:recipe_id, :name], unique: true
  end
end
