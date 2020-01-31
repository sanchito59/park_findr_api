class AddParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :climate
      t.string :operating_hours
      t.boolean :dog_friendly
      t.string :activities
      t.boolean :national_park
      t.integer :fees
      t.boolean :lodging
      t.boolean :camping
    end
  end
end
