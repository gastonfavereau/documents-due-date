class Document < ApplicationRecord
    belongs_to :company
    has_one :currency
    has_one :financial_institutios
    has_one :document_type
end
