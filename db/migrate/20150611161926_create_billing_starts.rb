class CreateBillingStarts < ActiveRecord::Migration
  def change
    create_table :billing_starts do |t|
      t.string :car
      t.integer :pack_id

      t.timestamps null: false
    end
  end
end
