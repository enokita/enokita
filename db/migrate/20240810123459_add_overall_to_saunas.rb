class AddOverallToSaunas < ActiveRecord::Migration[6.1]
  def change
    add_column :saunas, :overall, :integer
  end
end
