class AddSuccessfulToApproaches < ActiveRecord::Migration[5.0]
  def change
    add_column :approaches, :successful, :boolean
  end
end
