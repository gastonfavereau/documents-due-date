class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions, id: :uuid do |t|
      t.date :date
      t.text :description
      t.uuid :company_id
      t.uuid :document_id
      t.uuid :cliente_id

      t.timestamps
    end
  end
end
