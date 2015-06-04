class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :city
      t.string :raion
      t.string :address
      t.string :workinghours
      t.string :mintime
      t.string :lat
      t.string :lon

      t.timestamps null: false
    end
  end
end
