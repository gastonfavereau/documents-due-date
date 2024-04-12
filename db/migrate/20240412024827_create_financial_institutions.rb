class CreateFinancialInstitutions < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_institutions, id: :uuid do |t|
      t.string :name
      t.text :description
      t.uuid :company_id

      t.timestamps
    end
  end
end
