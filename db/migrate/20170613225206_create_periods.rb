class CreatePeriods < ActiveRecord::Migration[5.0]
  def change
    create_table :periods do |t|
  
      t.integer :days, null: false
      t.text :detail, null: false
      t.string :picture, null: false
      t.references :food, foreign_key: true
      t.references :place, foreign_key: true

    end
  end
end
