class AddForeingKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :currencies, :companies
    add_foreign_key :document_types, :companies
    add_foreign_key :documents, :companies
    add_foreign_key :financial_institutions, :companies
    add_foreign_key :transactions, :companies
    add_foreign_key :users, :companies

    add_foreign_key :transactions, :clients

    add_foreign_key :documents, :currencies

    add_foreign_key :documents, :document_types

    add_foreign_key :documents, :financial_institutions
  end
end
