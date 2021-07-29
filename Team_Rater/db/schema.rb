# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_21_181053) do

  create_table "admins", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "classlists", force: :cascade do |t|
    t.integer "class_id"
    t.string "student_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "cid"
    t.string "department"
    t.string "course_num"
    t.string "sec_num"
    t.string "professor"
    t.string "semester"
    t.string "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cid"], name: "index_courses_on_cid", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "assigned"
    t.string "due"
    t.string "pid"
    t.string "class"
    t.string "class_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pid"], name: "index_projects_on_pid", unique: true
  end

  create_table "ratings", force: :cascade do |t|
    t.string "author_email"
    t.string "recipient_email"
    t.string "comment"
    t.float "score"
    t.integer "proj_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_students_on_email", unique: true
  end

  create_table "teamlists", force: :cascade do |t|
    t.string "student_email"
    t.integer "team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "tid"
    t.string "tname"
    t.string "cid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tid"], name: "index_teams_on_tid", unique: true
  end

end
