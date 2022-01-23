class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :condition_name
      t.string :content

      t.timestamps
    end
  end
end
