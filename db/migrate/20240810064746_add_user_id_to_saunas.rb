class AddUserIdToSaunas < ActiveRecord::Migration[6.1]
  def change
    add_column :saunas, :user_id, :integer
  end
end
