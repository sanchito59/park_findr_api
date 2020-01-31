class AddLocationsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :continent
      t.string :country
      t.float :longitude
      t.float :latitude   
      t.string :city
      t.string :community
      t.string :street_address
    end
  end
end
