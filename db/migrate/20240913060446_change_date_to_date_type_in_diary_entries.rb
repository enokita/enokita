class ChangeDateToDateTypeInDiaryEntries < ActiveRecord::Migration[6.1]
  def change
    change_column :diary_entries, :date, :date
  end
end
