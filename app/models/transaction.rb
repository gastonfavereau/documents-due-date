class Transaction < ApplicationRecord
    belongs_to :company
    has_one :client
    has_many :documents
end
