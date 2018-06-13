class AddUserIdToOpeners < ActiveRecord::Migration[5.0]
  def change
    add_column :openers, :user_id, :integer
  end
end
