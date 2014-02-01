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

ActiveRecord::Schema.define(:version => 20131117043958) do

  create_table "all_registration_children", :force => true do |t|
    t.integer  "all_registration_id"
    t.string   "status"
    t.integer  "year"
    t.integer  "group"
    t.integer  "semester"
    t.string   "batch"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "all_registrations", :force => true do |t|
    t.string   "roll_no"
    t.string   "reg_no"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "father_name"
    t.string   "ph_no"
    t.string   "gender"
    t.date     "dob"
    t.integer  "age"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.string   "hall_ticket"
    t.float    "reg_fee"
    t.date     "reg_date"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "attendence_children", :force => true do |t|
    t.integer  "all_registration_id"
    t.integer  "year"
    t.integer  "group"
    t.integer  "semester"
    t.integer  "subject"
    t.string   "presence"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.date     "att_date"
  end

  create_table "attendences", :force => true do |t|
    t.string   "year"
    t.string   "group"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "subject"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "childmasters", :force => true do |t|
    t.integer  "profilemaster_id"
    t.string   "new"
    t.string   "edit"
    t.string   "view"
    t.string   "remove"
    t.string   "forms"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "college_fees", :force => true do |t|
    t.string   "hall_no"
    t.datetime "bill_date_time"
    t.float    "last_paid_amt"
    t.integer  "this_time_pay"
    t.integer  "till_now_paid"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "college_masters", :force => true do |t|
    t.string   "college_name"
    t.string   "college_code"
    t.string   "category"
    t.text     "address"
    t.string   "ph_no"
    t.string   "mobile_no"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "emp_id"
    t.string   "emp_name"
    t.string   "designation"
    t.string   "adress"
    t.string   "salary_type"
    t.float    "salary"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "dob"
    t.date     "reg_date"
  end

  create_table "form_lists", :force => true do |t|
    t.string   "form_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.integer  "year_id"
    t.string   "group"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gtpls", :force => true do |t|
    t.string   "attributes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "image_tables", :force => true do |t|
    t.integer  "parent_id"
    t.string   "files_file_name"
    t.string   "files_content_type"
    t.integer  "files_file_size"
    t.datetime "files_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_from"
  end

  create_table "move_class_children", :force => true do |t|
    t.integer  "all_registration_id"
    t.string   "status"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "year"
    t.integer  "group"
    t.integer  "semester"
  end

  create_table "move_classes", :force => true do |t|
    t.string   "year"
    t.string   "group"
    t.string   "semester"
    t.string   "batch"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "numbers", :force => true do |t|
    t.string   "n_type"
    t.integer  "start_value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "papclips", :force => true do |t|
    t.string   "files"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "files_file_name"
    t.string   "files_file_size"
    t.string   "files_content_type"
  end

  create_table "pclips", :force => true do |t|
    t.string   "files"
    t.string   "size1"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sub_category_id"
    t.float    "price"
    t.date     "warranty_expire_at"
    t.string   "brand"
    t.string   "serial"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "profilemasters", :force => true do |t|
    t.string   "profile_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "semesters", :force => true do |t|
    t.integer  "group_id"
    t.string   "category_id"
    t.string   "semester"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sub_categories", :force => true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "subjects", :force => true do |t|
    t.integer  "group_id"
    t.integer  "semester_id"
    t.string   "subject"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.string   "role"
    t.string   "active"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "years", :force => true do |t|
    t.integer  "category_id"
    t.string   "year"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "group"
  end

end
