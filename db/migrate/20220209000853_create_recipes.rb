class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :recipe_1
      t.string :recipe_2
      t.string :recipe_3
      t.string :recipe_4

      t.timestamps
    end
  end
end
