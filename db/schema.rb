# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_04_19_164041) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "tax_identification"
    t.string "address"
    t.string "email"
    t.integer "phone"
    t.uuid "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "phone"
    t.string "tax_identification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.uuid "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.uuid "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.date "issue_date"
    t.date "due_date"
    t.decimal "amount"
    t.string "status"
    t.uuid "currency_id"
    t.uuid "company_id"
    t.uuid "document_type_id"
    t.uuid "transaction_id"
    t.uuid "financial_institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "financial_institutions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.uuid "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "table_name"
    t.uuid "record_id"
    t.string "field_name"
    t.string "value"
    t.uuid "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.date "date"
    t.text "description"
    t.uuid "company_id"
    t.uuid "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.string "user"
    t.string "email"
    t.string "password"
    t.integer "phone"
    t.uuid "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clients", "companies"
  add_foreign_key "currencies", "companies"
  add_foreign_key "document_types", "companies"
  add_foreign_key "documents", "companies"
  add_foreign_key "documents", "currencies"
  add_foreign_key "documents", "document_types"
  add_foreign_key "documents", "financial_institutions"
  add_foreign_key "financial_institutions", "companies"
  add_foreign_key "transactions", "clients"
  add_foreign_key "transactions", "companies"
  add_foreign_key "users", "companies"
end
