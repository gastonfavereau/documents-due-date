class AddCompanyForeingKeyToClient < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :clients, :companies
  end
end
