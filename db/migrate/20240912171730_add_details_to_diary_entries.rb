class AddDetailsToDiaryEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :diary_entries, :date, :string
    add_column :diary_entries, :condition, :string
    add_column :diary_entries, :weather, :string
    add_column :diary_entries, :sauna_temperature, :integer
    add_column :diary_entries, :cold_bath_temperature, :integer
    add_column :diary_entries, :relaxation_level, :string
  end
end
