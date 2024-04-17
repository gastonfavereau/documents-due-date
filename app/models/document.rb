class Document < ApplicationRecord
  belongs_to :company
  belongs_to :currency
  belongs_to :financial_institution
  belongs_to :document_type
end
