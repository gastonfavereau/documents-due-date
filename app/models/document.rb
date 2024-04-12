class Document < ApplicationRecord
    belong_to :company
    belong_to :transaction
    has_one :currency
    has_one :financial_institutios
    has_one :document_type
end
