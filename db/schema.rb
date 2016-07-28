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

ActiveRecord::Schema.define(version: 20160728130339) do

  create_table "events", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.string   "link"
    t.string   "trello_tag"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events_tags", id: false, force: :cascade do |t|
    t.integer "event_id"
    t.integer "tag_id"
    t.index ["event_id"], name: "index_events_tags_on_event_id"
    t.index ["tag_id"], name: "index_events_tags_on_tag_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "second_name"
    t.string   "icon"
    t.integer  "profileable_id"
    t.index ["email"], name: "index_profiles_on_email", unique: true
    t.index ["reset_password_token"], name: "index_profiles_on_reset_password_token", unique: true
  end

  create_table "profiles_tags", id: false, force: :cascade do |t|
    t.integer "profile_id"
    t.integer "tag_id"
    t.index ["profile_id"], name: "index_profiles_tags_on_profile_id"
    t.index ["tag_id"], name: "index_profiles_tags_on_tag_id"
  end

  create_table "profiles_teams", id: false, force: :cascade do |t|
    t.integer "profile_id"
    t.integer "tag_id"
    t.index ["profile_id"], name: "index_profiles_teams_on_profile_id"
    t.index ["tag_id"], name: "index_profiles_teams_on_tag_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "name"
    t.text     "description"
    t.string   "logo"
    t.string   "git_link"
    t.string   "trello_link"
    t.float    "needed_budget"
    t.float    "got_budget"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "projects_tags", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "tag_id"
    t.index ["project_id"], name: "index_projects_tags_on_project_id"
    t.index ["tag_id"], name: "index_projects_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags_teams", id: false, force: :cascade do |t|
    t.integer "team_id"
    t.integer "tag_id"
    t.index ["tag_id"], name: "index_tags_teams_on_tag_id"
    t.index ["team_id"], name: "index_tags_teams_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer  "speaker_id"
    t.string   "name"
    t.string   "icon"
    t.string   "slack_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
