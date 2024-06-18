class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events, id: :uuid do |t|
      t.references :country, null: false, foreign_key: true, type: :uuid
      t.string :city, null: false
      t.date :date, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
