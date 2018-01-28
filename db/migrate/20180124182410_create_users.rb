class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :name_for_index, null: false
      t.string :email, null: false
      t.string :hashed_password, null: false
      t.text :bio
      t.string :screen_name, null: false

      t.timestamps
    end
    
    add_index :users, :name_for_index, unique: true
  end
end
