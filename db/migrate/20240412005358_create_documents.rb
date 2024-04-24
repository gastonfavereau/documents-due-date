class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents, id: :uuid do |t|
      t.date :issue_date
      t.date :due_date
      t.decimal :amount
      t.string :status
      t.uuid :currency_id
      t.uuid :company_id
      t.uuid :document_type_id
      t.uuid :transaction_id
      t.uuid :financial_institution_id

      t.timestamps
    end
  end
end
