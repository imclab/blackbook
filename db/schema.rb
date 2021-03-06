# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100709152629) do

  create_table "apps", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "title",            :limit => 50, :default => ""
    t.text     "text"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip_address"
    t.datetime "hidden_at"
  end

  add_index "comments", ["commentable_id"], :name => "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type"], :name => "index_comments_on_commentable_type"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "favorites", :force => true do |t|
    t.integer  "user_id"
    t.string   "object_type"
    t.integer  "object_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["object_id", "object_type"], :name => "index_favorites_on_object_id_and_object_type"

  create_table "forum_posts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forum_threads", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forums", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gml_objects", :force => true do |t|
    t.integer  "tag_id"
    t.text     "data",       :limit => 2147483647
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gml_objects", ["tag_id"], :name => "index_gml_objects_on_tag_id"

  create_table "likes", :force => true do |t|
    t.integer  "object_id"
    t.string   "object_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", :force => true do |t|
    t.string   "subject_id"
    t.string   "subject_type"
    t.string   "verb"
    t.integer  "user_id"
    t.integer  "supplement_id"
    t.string   "supplement_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "slug"
    t.integer  "comment_count"
    t.integer  "likes_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.string   "application"
    t.string   "author"
    t.string   "cached_tag_list"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "uuid"
    t.string   "ip"
    t.text     "description"
    t.string   "remote_image"
    t.string   "remote_secret"
    t.string   "gml_application"
    t.string   "gml_version"
    t.string   "gml_username"
    t.string   "gml_uniquekey"
    t.string   "gml_uniquekey_hash"
    t.string   "gml_keywords"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login",                              :null => false
    t.string   "email",              :default => "", :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "perishable_token",   :default => "", :null => false
    t.integer  "login_count",        :default => 0,  :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.boolean  "admin"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "website"
    t.string   "tagline"
    t.text     "about"
    t.string   "location"
    t.string   "slug"
    t.string   "name"
    t.string   "iphone_uniquekey"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["last_request_at"], :name => "index_users_on_last_request_at"
  add_index "users", ["login"], :name => "index_users_on_login"
  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token"

  create_table "visualizations", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "slug"
    t.string   "website"
    t.string   "download"
    t.string   "version"
    t.text     "description"
    t.string   "authors"
    t.string   "kind",                                     :default => ""
    t.boolean  "is_embeddable",                            :default => false
    t.string   "embed_url"
    t.string   "embed_callback"
    t.string   "embed_params"
    t.text     "embed_code",         :limit => 2147483647
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "approved_at"
    t.integer  "approved_by"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
  end

end
