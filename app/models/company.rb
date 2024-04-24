class Company < ApplicationRecord
  has_many :clients
  has_many :currencies
  has_many :document_types
  has_many :documents
  has_many :financial_institutions
  has_many :transactions
  has_many :users
end
