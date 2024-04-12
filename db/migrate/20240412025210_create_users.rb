class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.string :user
      t.string :email
      t.string :password
      t.integer :phone
      t.uuid :company_id

      t.timestamps
    end
  end
end
