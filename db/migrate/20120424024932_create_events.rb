class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.datetime :start
      t.datetime :end
      t.string :details
      t.string :img
      t.integer :orgid
      t.string :type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
