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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140416144128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "section_work"
    t.text     "description"
    t.string   "city"
    t.string   "state"
    t.string   "neighborhood"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["user_id"], name: "index_companies_on_user_id", using: :btree

  create_table "educations", force: true do |t|
    t.string   "institution"
    t.integer  "start_year"
    t.integer  "end_year"
    t.string   "formation"
    t.string   "course"
    t.text     "description"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "educations", ["resume_id"], name: "index_educations_on_resume_id", using: :btree

  create_table "experiences", force: true do |t|
    t.string   "company_name"
    t.string   "title"
    t.string   "location"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "description"
    t.boolean  "is_current_job"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["resume_id"], name: "index_experiences_on_resume_id", using: :btree

  create_table "languages", force: true do |t|
    t.string   "name"
    t.string   "level"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "languages", ["resume_id"], name: "index_languages_on_resume_id", using: :btree

  create_table "profiles", force: true do |t|
    t.string   "first_name"
    t.string   "gender"
    t.date     "birth"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "website"
    t.string   "street"
    t.integer  "number"
    t.string   "complement"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "linkedin_url"
    t.string   "github_url"
    t.string   "facebook_id"
    t.string   "google_id"
    t.boolean  "is_newsletter"
    t.boolean  "is_terms"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_name"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "resumes", force: true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "section_work"
    t.string   "title"
    t.boolean  "show_in_search"
    t.boolean  "is_public_link"
    t.string   "public_link"
  end

  add_index "resumes", ["user_id"], name: "index_resumes_on_user_id", using: :btree

  create_table "skills", force: true do |t|
    t.string   "name"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["resume_id"], name: "index_skills_on_resume_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "recipe"
  end

end
