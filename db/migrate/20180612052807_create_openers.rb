class CreateOpeners < ActiveRecord::Migration
  def change
    create_table :openers do |t|
      t.integer :styles_id
      t.string :title
      t.string :line

      t.timestamps

    end
  end
end
