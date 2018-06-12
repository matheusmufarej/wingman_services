class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :style_id
      t.string :name
      t.string :address
      t.string :description
      t.string :website
      t.string :photo

      t.timestamps

    end
  end
end
