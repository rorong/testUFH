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

ActiveRecord::Schema[7.0].define(version: 2023_08_28_080757) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_us", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "diagnos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmboxes", force: :cascade do |t|
    t.string "farm_name"
    t.integer "square_count"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gift_card_orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "grocery_gift_card_id", null: false
    t.boolean "status"
    t.string "store"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grocery_gift_card_id"], name: "index_gift_card_orders_on_grocery_gift_card_id"
    t.index ["user_id"], name: "index_gift_card_orders_on_user_id"
  end

  create_table "grocery_gift_cards", force: :cascade do |t|
    t.string "name_of_gift_card"
    t.float "value_of_gift_card"
    t.integer "square_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "hosptial_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lancaster_orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "lancaster_id", null: false
    t.string "location"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lancaster_id"], name: "index_lancaster_orders_on_lancaster_id"
    t.index ["user_id"], name: "index_lancaster_orders_on_user_id"
  end

  create_table "lancasters", force: :cascade do |t|
    t.string "farm_name"
    t.integer "square_count"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "language_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_uploads", force: :cascade do |t|
    t.string "email_address"
    t.integer "row_count"
    t.integer "completed_count"
    t.integer "error_count"
    t.string "ouput_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date_of_birth"
    t.string "special_delivery"
    t.string "already_received"
    t.string "current_diagnosis"
    t.boolean "tnbc"
    t.date "diagnosis_date"
    t.string "hospital"
    t.string "oncologist_first_name"
    t.string "oncologist_last_name"
    t.string "learn_about"
    t.string "other"
    t.boolean "local"
    t.boolean "national"
    t.string "insurance"
    t.string "insurance_other"
    t.bigint "under_represented_id", null: false
    t.boolean "approved"
    t.boolean "bilingual"
    t.string "grants"
    t.boolean "liability_release"
    t.boolean "publicity_release"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["under_represented_id"], name: "index_members_on_under_represented_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "passport_statuses", force: :cascade do |t|
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passports", force: :cascade do |t|
    t.string "passpost_id"
    t.bigint "user_id", null: false
    t.integer "square_granted"
    t.integer "square_used"
    t.string "qr_code"
    t.date "expiration_date"
    t.boolean "eligible_renewal"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_passports_on_user_id"
  end

  create_table "pre_written_emails", force: :cascade do |t|
    t.string "subject"
    t.text "content"
    t.integer "week_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "program_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provider_uploads", force: :cascade do |t|
    t.string "email_address"
    t.integer "row_count"
    t.integer "completed_count"
    t.integer "error_count"
    t.string "ouput_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.boolean "virtual_sessions"
    t.string "company"
    t.bigint "service_id", null: false
    t.datetime "insurance_expiration"
    t.string "certification_name"
    t.boolean "certification"
    t.date "cert_expiration"
    t.date "training_class"
    t.text "notes"
    t.string "nickname"
    t.string "bilingual"
    t.string "bilingual_language"
    t.boolean "provider_agreement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_providers_on_service_id"
    t.index ["user_id"], name: "index_providers_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource"
    t.index ["role", "resource_type", "resource_id"], name: "index_roles_on_role_and_resource_type_and_resource_id"
  end

  create_table "sent_email_logs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "email_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sent_email_logs_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name"
    t.text "service_description"
    t.integer "square_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "store_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sunbasket_orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "sunbasket_id", null: false
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sunbasket_id"], name: "index_sunbasket_orders_on_sunbasket_id"
    t.index ["user_id"], name: "index_sunbasket_orders_on_user_id"
  end

  create_table "sunbaskets", force: :cascade do |t|
    t.string "farm_name"
    t.integer "square_count"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transaction_uploads", force: :cascade do |t|
    t.string "email_address"
    t.integer "row_count"
    t.integer "completed_count"
    t.integer "error_count"
    t.string "ouput_file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "member_user_id"
    t.integer "provider_user_id"
    t.bigint "service_id", null: false
    t.datetime "transaction_date"
    t.float "value"
    t.boolean "provider_review"
    t.boolean "paid"
    t.integer "square_count"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_transactions_on_service_id"
  end

  create_table "under_representeds", force: :cascade do |t|
    t.string "zip_code"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.string "phone_number"
    t.string "city"
    t.string "street"
    t.string "zip_code"
    t.string "country"
    t.boolean "terms_and_conditions"
    t.string "demographic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "gift_card_orders", "grocery_gift_cards"
  add_foreign_key "gift_card_orders", "users"
  add_foreign_key "lancaster_orders", "lancasters"
  add_foreign_key "lancaster_orders", "users"
  add_foreign_key "members", "under_representeds"
  add_foreign_key "members", "users"
  add_foreign_key "passports", "users"
  add_foreign_key "providers", "services"
  add_foreign_key "providers", "users"
  add_foreign_key "sent_email_logs", "users"
  add_foreign_key "sunbasket_orders", "sunbaskets"
  add_foreign_key "sunbasket_orders", "users"
  add_foreign_key "transactions", "services"
end
