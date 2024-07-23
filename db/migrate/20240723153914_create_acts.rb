class CreateActs < ActiveRecord::Migration[7.1]
  def change
    create_table :acts, id: :uuid do |t|
      t.references :country, null: false, foreign_key: true, type: :uuid
      t.references :event, null: false, foreign_key: true, type: :uuid
      t.integer :real_final_score
      t.integer :home_final_score
      t.integer :order

      t.timestamps
    end
  end
end
