class RemoveColumnFromUsersAndGifts < ActiveRecord::Migration[5.2]
  def change
    remove_column :gifts, :user_id, :integer
    remove_column :users, :gift_id, :integer
  end
end
