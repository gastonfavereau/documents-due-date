class Transaction < ApplicationRecord
  belongs_to :company
  belongs_to :client
  has_many :documents
end
