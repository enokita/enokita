class CreateDiaryEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_entries do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
