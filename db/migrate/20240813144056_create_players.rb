class CreatePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :players, id: :uuid do |t|
      t.references :event, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.integer :predicted_score

      t.timestamps
    end
  end
end
