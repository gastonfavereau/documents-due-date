class Document < ApplicationRecord
  belongs_to :company
  belongs_to :currency
  belongs_to :document_type
  belongs_to :financial_institution, optional: true

  # TODO: Add next assosation:
  # belongs_to :transaction
  #
  # But may be rename the model Transaction because :transaction are reserved.
  # ERROR at create a new document: "You tried to define an association named transaction on the model Document, but this will conflict with a method transaction already defined by Active Record. Please choose a different association name"

end
