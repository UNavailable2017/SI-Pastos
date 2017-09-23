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

ActiveRecord::Schema.define(version: 20170922043416) do

  create_table "announcements", force: :cascade do |t|
    t.date "publicationDate"
    t.date "deadline"
    t.text "announcementType"
    t.text "announcementInformation"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.integer "votes"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "election_id"
  end

  create_table "censos", force: :cascade do |t|
    t.date "date"
    t.integer "numberOfChildren"
    t.string "originResguardo"
    t.string "levelStudies"
    t.string "profession"
    t.string "entry"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "health_service_id"
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "censo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elections", force: :cascade do |t|
    t.date "date"
    t.string "winner"
    t.integer "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "eventType"
    t.text "eventInfo"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health_services", force: :cascade do |t|
    t.string "name"
    t.integer "censo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opinions", force: :cascade do |t|
    t.text "interest"
    t.text "socialOrganization"
    t.text "groupsParticipation"
    t.text "workGroupDecision"
    t.text "ideas"
    t.text "activitiesParticipatedBogota"
    t.text "whatIsParticipating"
    t.text "rightsMechanisms"
    t.text "districtParticipation"
    t.text "reasonParticipation"
    t.text "reasonNoParticipation"
    t.text "adviceOnParticipation"
    t.text "training"
    t.text "trainingTheme"
    t.text "cabildoTrust"
    t.text "trustLocalGovernment"
    t.text "trustNationalGovernment"
    t.text "trustONGfoundation"
    t.integer "censo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer "documentPerson"
    t.string "documentType"
    t.string "name"
    t.string "lastname"
    t.date "birthDate"
    t.string "civilStatus"
    t.string "gender"
    t.boolean "isCensus"
    t.string "originLanguage"
    t.string "languageDomination"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residences", force: :cascade do |t|
    t.text "address"
    t.integer "phone"
    t.string "neighborhood"
    t.string "locality"
    t.float "lat"
    t.float "long"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
