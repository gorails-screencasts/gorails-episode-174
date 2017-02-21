class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :months_subscribed
      t.boolean :moderator
      t.boolean :admin

      t.timestamps
    end
  end
end
