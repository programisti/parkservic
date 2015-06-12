class CreateCartus < ActiveRecord::Migration
  def change
    create_table :cartus do |t|
      t.string :PurchaseDesc
      t.string :PurchaseAmt
      t.string :CountryCode
      t.string :CurrencyCode
      t.string :MerchantName
      t.string :MerchantURL
      t.string :MerchantCity
      t.string :MerchantID
      t.string :Language

      t.timestamps null: false
    end
  end
end
