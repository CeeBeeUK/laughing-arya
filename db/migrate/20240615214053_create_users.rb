class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users, id: :uuid do |t|
      t.string :uid
      t.string :provider
      t.string :display_name
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
