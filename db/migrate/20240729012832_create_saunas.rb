class CreateSaunas < ActiveRecord::Migration[6.1]
  def change
    create_table :saunas do |t|
      t.string :name
      t.integer :cost
      t.string :place

      t.timestamps
    end
  end
end
