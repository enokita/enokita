class AddHidukeToDiaryEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :diary_entries, :hiduke, :date
  end
end
