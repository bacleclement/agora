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

ActiveRecord::Schema.define(version: 20181214164928) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "school_id"
    t.string "city"
    t.string "username"
    t.integer "age"
    t.string "sexe"
    t.string "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["school_id"], name: "index_profiles_on_school_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "profile_id"
    t.integer "upvote"
    t.integer "downvote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "question_type"
    t.string "users_array", default: [], array: true
    t.index ["profile_id"], name: "index_questions_on_profile_id"
  end

  create_table "responses", force: :cascade do |t|
    t.text "description"
    t.integer "vote"
    t.bigint "question_id"
    t.bigint "profile_id"
    t.integer "upvote"
    t.integer "downvote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_responses_on_profile_id"
    t.index ["question_id"], name: "index_responses_on_question_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "title"
    t.integer "score"
    t.text "description"
    t.string "badge"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "profiles", "schools"
  add_foreign_key "profiles", "users"
  add_foreign_key "questions", "profiles"
  add_foreign_key "responses", "profiles"
  add_foreign_key "responses", "questions"
end
