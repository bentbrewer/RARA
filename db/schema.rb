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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110106040213) do

  create_table "emap_standards", :force => true do |t|
    t.string   "chapter"
    t.string   "area"
    t.text     "language"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_id"
    t.string   "standard"
  end

  add_index "emap_standards", ["status_id"], :name => "index_emap_standards_on_status_id"

  create_table "findings", :force => true do |t|
    t.text     "rational"
    t.text     "observation"
    t.text     "recomendations"
    t.boolean  "decision"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_id"
  end

  add_index "findings", ["status_id"], :name => "index_findings_on_status_id"

  create_table "medical_standards", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_id"
    t.string   "cat_id"
    t.string   "item_id"
    t.string   "category"
    t.text     "item"
    t.text     "remarks"
  end

  add_index "medical_standards", ["status_id"], :name => "index_medical_standards_on_status_id"

  create_table "military_standards", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status_id"
    t.string   "cat_id"
    t.string   "item_id"
    t.string   "category"
    t.text     "item"
    t.text     "remarks"
  end

  add_index "military_standards", ["status_id"], :name => "index_military_standards_on_status_id"

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standard_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
    t.integer  "emap_standard_id"
    t.integer  "medical_standard_id"
    t.integer  "military_standard_id"
  end

  add_index "standard_assignments", ["emap_standard_id"], :name => "index_standard_assignments_on_emap_standard_id"
  add_index "standard_assignments", ["medical_standard_id"], :name => "index_standard_assignments_on_medical_standard_id"
  add_index "standard_assignments", ["military_standard_id"], :name => "index_standard_assignments_on_military_standard_id"
  add_index "standard_assignments", ["program_id"], :name => "index_standard_assignments_on_program_id"

  create_table "standard_findings", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "finding_id"
    t.integer  "emap_standard_id"
    t.integer  "medical_standard_id"
    t.integer  "military_standard_id"
  end

  add_index "standard_findings", ["emap_standard_id"], :name => "index_standard_findings_on_emap_standard_id"
  add_index "standard_findings", ["finding_id"], :name => "index_standard_findings_on_finding_id"
  add_index "standard_findings", ["medical_standard_id"], :name => "index_standard_findings_on_medical_standard_id"
  add_index "standard_findings", ["military_standard_id"], :name => "index_standard_findings_on_military_standard_id"

  create_table "std_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "invited"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end