class AddSizeColToParksTable < ActiveRecord::Migration[5.2]
  def change
    add_column(:parks, :size, :float)
  end
end
