class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :flag_name, null: false

      t.timestamps
      t.index :id, unique: true
    end
  end
end
