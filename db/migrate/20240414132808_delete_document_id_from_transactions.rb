class DeleteDocumentIdFromTransactions < ActiveRecord::Migration[7.0]
  def change
    remove_column :transactions, :document_id, :UUID
  end
end
