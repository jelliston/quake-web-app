class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :nickname
      t.string :locname
      t.float :latitude
      t.float :longitude
      t.integer :maxradiuskm
      t.decimal :minmagnitude

      t.timestamps
    end
  end
end
