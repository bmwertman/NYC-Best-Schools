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

ActiveRecord::Schema.define(:version => 20140115211935) do

  create_table "apartments", :force => true do |t|
    t.integer  "school_zone_id"
    t.integer  "rent"
    t.string   "address"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "districts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "earthquakes", :force => true do |t|
    t.decimal  "magnitude",                                           :null => false
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.spatial  "center",     :limit => {:srid=>4326, :type=>"point"}
  end

  create_table "school_zones", :force => true do |t|
    t.integer  "district_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.float    "shape_length"
    t.float    "shape_area"
    t.integer  "district_num"
    t.string   "school_name"
    t.string   "school_level"
    t.integer  "overall_score"
    t.string   "overall_grade"
    t.integer  "progress_score"
    t.string   "progress_grade"
    t.integer  "performance_score"
    t.string   "performance_grade"
    t.integer  "environment_score"
    t.string   "environment_grade"
    t.integer  "dbn_num"
  end

  create_table "user_fave_apartments", :force => true do |t|
    t.integer "apartment_id"
    t.integer "user_id"
  end

  create_table "user_fave_school_zones", :force => true do |t|
    t.integer "school_zone_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

end
