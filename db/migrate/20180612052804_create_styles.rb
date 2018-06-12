class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :title
      t.string :description

      t.timestamps

    end
  end
end
