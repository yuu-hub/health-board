class AddFoodToSearches < ActiveRecord::Migration[6.1]
  def change
    add_column :searches, :food, :string
    add_column :searches, :content_2, :string
    add_column :searches, :food_2, :string
    add_column :searches, :content_3, :string
    add_column :searches, :food_3, :string
    add_column :searches, :content_4, :string
    add_column :searches, :food_4, :string
  end
end
