class AddForeignKeyToParks < ActiveRecord::Migration[5.2]
  def change
    add_column(:parks, :location_id, :integer)
  end
end
