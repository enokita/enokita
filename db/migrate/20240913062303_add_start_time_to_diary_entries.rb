class AddStartTimeToDiaryEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :diary_entries, :start_time, :datetime
  end
end
