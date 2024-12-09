class ChangeDateToDateTypeInDiaryEntries < ActiveRecord::Migration[6.1]
  def up
    change_column :diary_entries, :date, :date
  end
  def down
    change_column :diary_entries, :date, :date
  end
end
