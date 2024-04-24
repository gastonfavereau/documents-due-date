class Document < ApplicationRecord
  belongs_to :company
  belongs_to :currency
  belongs_to :document_type
  has_one :financial_institution
end
