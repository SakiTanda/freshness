class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|

      t.string :name, limit: 20
      t.string :picture, limit: 20 

      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
