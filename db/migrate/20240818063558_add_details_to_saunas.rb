class AddDetailsToSaunas < ActiveRecord::Migration[6.1]
  def change
    add_column :saunas, :lat, :float
    add_column :saunas, :lng, :float
  end
end
