class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :venue
      t.datetime :start
      t.datetime :end
      t.text :details
      t.string :image
      t.integer :organization_id
      t.string :event_type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
