class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :website
      t.string :phone
      t.string :email
      t.string :logo
      t.boolean :verified
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
