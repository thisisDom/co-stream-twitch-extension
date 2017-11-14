class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :twitch_id, null: false
      t.timestamps
    end
  end
end
