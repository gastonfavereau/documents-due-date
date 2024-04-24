class Document < ApplicationRecord
  belongs_to :company
  belongs_to :currency
  belongs_to :document_type
  belongs_to :financial_institution, optional: true
end
