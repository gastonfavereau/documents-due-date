class CreateCurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :currencies, id: :uuid do |t|
      t.string :name
      t.string :symbol
      t.uuid :company_id

      t.timestamps
    end
  end
end