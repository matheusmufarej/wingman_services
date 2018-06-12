class CreateApproaches < ActiveRecord::Migration
  def change
    create_table :approaches do |t|
      t.integer :user_id
      t.integer :venue_id
      t.integer :opener_id

      t.timestamps

    end
  end
end
