class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies, id: :uuid do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :tax_identification

      t.timestamps
    end
  end
end
