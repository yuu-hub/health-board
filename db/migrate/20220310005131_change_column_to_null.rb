class ChangeColumnToNull < ActiveRecord::Migration[6.1]
  def up
    change_column_null :searches, :user_id, true
  end
  
  def down
    change_column_null :searches, :user_id, false
  end
end
