class Transaction < ApplicationRecord
    belong_to :company
    has_one :client
end
