class AddUserId < ActiveRecord::Migration[5.0]
  def change
    add_column :nations, :user_id, :integer
  end
end
