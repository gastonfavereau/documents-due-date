class Currency < ApplicationRecord
  belongs_to :company
  has_many :documents
end
