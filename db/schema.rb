# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20131203034312) do

  create_table "assignments", :force => true do |t|
    t.integer  "role_id"
    t.integer  "permission_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "attendees", :force => true do |t|
    t.string   "handle"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.integer  "created_by"
    t.string   "code"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "attendees", ["code"], :name => "index_attendees_on_code", :unique => true

  create_table "attends", :force => true do |t|
    t.integer  "attendee_id"
    t.integer  "event_id"
    t.boolean  "is_present"
    t.datetime "checkedin_at"
    t.datetime "checkedout_at"
    t.integer  "created_by"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "checks", :force => true do |t|
    t.integer  "item_id"
    t.integer  "attendee_id"
    t.integer  "event_id"
    t.boolean  "is_checked_in"
    t.integer  "created_by"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "location"
    t.integer  "created_by"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "events", ["name"], :name => "index_events_on_name", :unique => true

  create_table "items", :force => true do |t|
    t.string   "code"
    t.integer  "type"
    t.string   "name"
    t.integer  "created_by"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "permissions", ["name"], :name => "index_permissions_on_name", :unique => true

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "roles", ["name"], :name => "index_roles_on_name", :unique => true

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "crypt_hash"
    t.integer  "created_by"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
