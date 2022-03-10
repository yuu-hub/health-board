class AddAdminToSearches < ActiveRecord::Migration[6.1]
  def change
    add_reference :searches, :admin, foreign_key: true
  end
end
