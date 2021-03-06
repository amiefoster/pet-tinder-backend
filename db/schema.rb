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

ActiveRecord::Schema.define(version: 2021_10_28_183930) do

  create_table "liked_pets", force: :cascade do |t|
    t.integer "main_user_profile_id"
    t.integer "pet_profile_id"
    t.string "name"
    t.string "species"
    t.string "breed"
    t.integer "age"
    t.string "owner_hobby"
    t.string "image_url"
    t.boolean "profile_like"
    t.string "owner_name"
    t.integer "owner_age"
  end

  create_table "main_user_profiles", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "breed"
    t.integer "age"
    t.string "owner_hobby"
    t.string "image_url"
    t.string "owner_name"
    t.integer "owner_age"
  end

  create_table "pet_profiles", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "breed"
    t.integer "age"
    t.string "owner_hobby"
    t.string "image_url"
    t.boolean "user_like"
    t.boolean "profile_like"
    t.string "owner_name"
    t.integer "owner_age"
  end

end
