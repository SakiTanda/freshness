class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|

      t.string :name, limit: 20

    end
  end
end
