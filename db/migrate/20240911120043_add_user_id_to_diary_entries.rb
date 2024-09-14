class AddUserIdToDiaryEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :diary_entries, :user_id, :integer
  end
end
