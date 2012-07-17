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

ActiveRecord::Schema.define(:version => 20120717154858) do

  create_table "contact_requests", :force => true do |t|
    t.string   "email",      :limit => 100,                    :null => false
    t.string   "name",       :limit => 64
    t.text     "message",                                      :null => false
    t.boolean  "read",                      :default => false, :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  add_index "contact_requests", ["email"], :name => "index_contact_requests_on_email"
  add_index "contact_requests", ["name"], :name => "index_contact_requests_on_name"
  add_index "contact_requests", ["read"], :name => "index_contact_requests_on_read"

  create_table "events", :force => true do |t|
    t.string   "description", :null => false
    t.datetime "created_at"
  end

  create_table "galleries", :force => true do |t|
    t.integer  "position"
    t.string   "name",                        :null => false
    t.string   "keywords"
    t.text     "description"
    t.string   "cover_uid"
    t.string   "cover_name"
    t.integer  "photos_count", :default => 0, :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "pages", :force => true do |t|
    t.string   "name",       :limit => 20, :null => false
    t.string   "keywords"
    t.text     "body",                     :null => false
    t.string   "image_uid"
    t.string   "image_name"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "photographers", :force => true do |t|
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
    t.integer  "failed_attempts",                       :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.string   "name",                   :limit => 80,                  :null => false
    t.string   "tagline",                :limit => 128,                 :null => false
    t.string   "phone",                  :limit => 22
    t.string   "time_zone",              :limit => 40
    t.string   "description"
    t.string   "portfolio_url",          :limit => 512
    t.string   "blog_url",               :limit => 512
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "google_analytics_key",   :limit => 16
    t.string   "disqus_short_name",      :limit => 64
    t.text     "conversion_code"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
  end

  add_index "photographers", ["email"], :name => "index_photographers_on_email", :unique => true
  add_index "photographers", ["reset_password_token"], :name => "index_photographers_on_reset_password_token", :unique => true
  add_index "photographers", ["unlock_token"], :name => "index_photographers_on_unlock_token", :unique => true

  create_table "photos", :force => true do |t|
    t.string   "name",           :limit => 100,                :null => false
    t.string   "photo_uid"
    t.string   "photo_name"
    t.integer  "view_count",                    :default => 0, :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.integer  "position"
    t.integer  "photoable_id"
    t.string   "photoable_type"
  end

  add_index "photos", ["photoable_id", "photoable_type"], :name => "index_photos_on_photoable_id_and_photoable_type"

  create_table "posts", :force => true do |t|
    t.string   "title",      :limit => 64, :null => false
    t.string   "keywords"
    t.text     "body",                     :null => false
    t.string   "image_uid"
    t.string   "image_name"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "private_galleries", :force => true do |t|
    t.string   "token",        :limit => 32,                 :null => false
    t.string   "name",         :limit => 100,                :null => false
    t.datetime "expires_on"
    t.integer  "photos_count",                :default => 0, :null => false
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "private_galleries", ["created_at"], :name => "index_private_galleries_on_created_at"
  add_index "private_galleries", ["token"], :name => "index_private_galleries_on_token", :unique => true

end
