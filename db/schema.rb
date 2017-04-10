# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 9) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "customer_id"
    t.boolean  "is_primary"
    t.string   "business"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.integer  "state_id"
    t.integer  "country_id"
    t.string   "zip"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["country_id"], name: "index_addresses_on_country_id", using: :btree
    t.index ["customer_id"], name: "index_addresses_on_customer_id", using: :btree
    t.index ["state_id"], name: "index_addresses_on_state_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "meta_title"
    t.text     "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string   "code"
    t.decimal  "amount"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "status_id"
    t.string   "order_hash"
    t.integer  "shipping_address_id"
    t.integer  "billing_address_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["billing_address_id"], name: "index_orders_on_billing_address_id", using: :btree
    t.index ["customer_id"], name: "index_orders_on_customer_id", using: :btree
    t.index ["shipping_address_id"], name: "index_orders_on_shipping_address_id", using: :btree
    t.index ["status_id"], name: "index_orders_on_status_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.boolean  "is_published"
    t.string   "title"
    t.text     "description"
    t.string   "meta_title"
    t.text     "meta_description"
    t.string   "meta_keywords"
    t.decimal  "price"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "products_categories", id: false, force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "product_id"
    t.integer  "sort_order"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_products_categories_on_category_id", using: :btree
    t.index ["product_id"], name: "index_products_categories_on_product_id", using: :btree
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id", using: :btree
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "countries"
  add_foreign_key "addresses", "customers"
  add_foreign_key "addresses", "states"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "statuses"
  add_foreign_key "products_categories", "categories"
  add_foreign_key "products_categories", "products"
  add_foreign_key "states", "countries"
end
