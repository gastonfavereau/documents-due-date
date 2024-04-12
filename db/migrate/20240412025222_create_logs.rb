class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs, id: :uuid do |t|
      t.string :table_name
      t.uuid :record_id
      t.string :field_name
      t.string :value
      t.uuid :user_id

      t.timestamps
    end
  end
end
