class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients, id: :uuid do |t|
      t.string :name
      t.string :tax_identification
      t.string :address
      t.string :email
      t.integer :phone
      t.uuid :company_id

      t.timestamps
    end
  end
end