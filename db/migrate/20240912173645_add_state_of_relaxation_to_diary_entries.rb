class AddStateOfRelaxationToDiaryEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :diary_entries, :state_of_relaxation, :string
  end
end
