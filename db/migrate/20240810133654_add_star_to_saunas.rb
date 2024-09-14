class AddStarToSaunas < ActiveRecord::Migration[6.1]
  def change
    add_column :saunas, :star, :integer
  end
end
