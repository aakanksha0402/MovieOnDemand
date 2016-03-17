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

ActiveRecord::Schema.define(version: 20160317061035) do

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id", limit: 4
    t.string   "answer_name", limit: 255
    t.boolean  "is_deleted"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "booked_seats", force: :cascade do |t|
    t.integer  "theatre_seat_id",       limit: 4
    t.integer  "booking_id",            limit: 4
    t.string   "status_of_booked_seat", limit: 255
    t.boolean  "is_deleted"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "booked_seats", ["booking_id"], name: "index_booked_seats_on_booking_id", using: :btree

  create_table "bookings", force: :cascade do |t|
    t.integer  "screening_id", limit: 4
    t.integer  "user_id",      limit: 4
    t.integer  "seat_count",   limit: 4
    t.boolean  "is_deleted"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "bookings", ["screening_id"], name: "index_bookings_on_screening_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "community_id", limit: 4
    t.integer  "user_id",      limit: 4
    t.text     "comment",      limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "comments", ["community_id"], name: "index_comments_on_community_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "communities", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "movie_id",    limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "communities", ["movie_id"], name: "index_communities_on_movie_id", using: :btree
  add_index "communities", ["user_id"], name: "index_communities_on_user_id", using: :btree

  create_table "genre_movies", force: :cascade do |t|
    t.integer "genre_id", limit: 4
    t.integer "movie_id", limit: 4
  end

  add_index "genre_movies", ["genre_id"], name: "index_genre_movies_on_genre_id", using: :btree
  add_index "genre_movies", ["movie_id"], name: "index_genre_movies_on_movie_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "parent_id",  limit: 4
    t.boolean  "is_deleted"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "language_movies", force: :cascade do |t|
    t.integer "language_id", limit: 4
    t.integer "movie_id",    limit: 4
  end

  add_index "language_movies", ["language_id"], name: "index_language_movies_on_language_id", using: :btree
  add_index "language_movies", ["movie_id"], name: "index_language_movies_on_movie_id", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "language",   limit: 255
    t.boolean  "is_deleted"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "movie_suggestions", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 255
    t.string   "details",    limit: 255
    t.boolean  "status"
    t.boolean  "is_deleted"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "movie_suggestions", ["user_id"], name: "index_movie_suggestions_on_user_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "director",        limit: 255
    t.string   "starring",        limit: 255
    t.date     "released_on"
    t.decimal  "rating",                        precision: 10
    t.text     "description",     limit: 65535
    t.string   "duration",        limit: 255
    t.integer  "screening_count", limit: 4
    t.boolean  "is_delete"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "theater_id",    limit: 4
    t.string   "anme",          limit: 255
    t.string   "description",   limit: 255
    t.decimal  "discount",                  precision: 7, scale: 2
    t.string   "promo_code",    limit: 255
    t.date     "starting_date"
    t.date     "ending_date"
    t.boolean  "is_deleted"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  add_index "offers", ["theater_id"], name: "index_offers_on_theater_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.integer  "bookedseat_id",     limit: 4
    t.decimal  "amount",                        precision: 10
    t.string   "mode_of_payment",   limit: 255
    t.boolean  "status_of_payment"
    t.boolean  "is_deleted"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.integer  "movie_id",   limit: 4
    t.text     "whatsapp",   limit: 65535
    t.text     "facebook",   limit: 65535
    t.text     "twitter",    limit: 65535
    t.string   "link",       limit: 255
    t.boolean  "is_deleted"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "promotions", ["movie_id"], name: "index_promotions_on_movie_id", using: :btree

  create_table "question_answers", force: :cascade do |t|
    t.integer "survey_id",   limit: 4
    t.integer "user_id",     limit: 4
    t.integer "question_id", limit: 4
    t.integer "answer_id",   limit: 4
  end

  add_index "question_answers", ["answer_id"], name: "index_question_answers_on_answer_id", using: :btree
  add_index "question_answers", ["question_id"], name: "index_question_answers_on_question_id", using: :btree
  add_index "question_answers", ["survey_id"], name: "index_question_answers_on_survey_id", using: :btree
  add_index "question_answers", ["user_id"], name: "index_question_answers_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "question_name", limit: 255
    t.boolean  "is_deleted"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "screenings", force: :cascade do |t|
    t.integer  "movie_id",           limit: 4
    t.integer  "user_id",            limit: 4
    t.integer  "theater_id",         limit: 4
    t.integer  "offer_id",           limit: 4
    t.datetime "start_time"
    t.date     "date"
    t.boolean  "approval_filmmaker"
    t.boolean  "approval_theatre"
    t.integer  "threshold",          limit: 4
    t.boolean  "status"
    t.boolean  "is_deleted"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "screenings", ["movie_id"], name: "index_screenings_on_movie_id", using: :btree
  add_index "screenings", ["offer_id"], name: "index_screenings_on_offer_id", using: :btree
  add_index "screenings", ["theater_id"], name: "index_screenings_on_theater_id", using: :btree
  add_index "screenings", ["user_id"], name: "index_screenings_on_user_id", using: :btree

  create_table "seat_prices", force: :cascade do |t|
    t.integer  "theater_id", limit: 4
    t.decimal  "weekdays",             precision: 7, scale: 2
    t.decimal  "weekends",             precision: 7, scale: 2
    t.boolean  "is_deleted"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "seat_prices", ["theater_id"], name: "index_seat_prices_on_theater_id", using: :btree

  create_table "staff_permissions", force: :cascade do |t|
    t.boolean  "manage_seat"
    t.boolean  "manage_vouchers"
    t.boolean  "manage_show_time"
    t.boolean  "manage_tax_info"
    t.boolean  "manage_price_per_day"
    t.boolean  "is_deleted"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.boolean  "is_deleted"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "theater_screens", force: :cascade do |t|
    t.integer  "theater_id", limit: 4
    t.integer  "screen_no",  limit: 4
    t.boolean  "is_deleted"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "theater_screens", ["theater_id"], name: "index_theater_screens_on_theater_id", using: :btree

  create_table "theater_seats", force: :cascade do |t|
    t.integer  "theater_screen_id",     limit: 4
    t.string   "seat_type",             limit: 255
    t.integer  "row_count",             limit: 4
    t.integer  "column_count",          limit: 4
    t.decimal  "price_multiple_factor",             precision: 5, scale: 2
    t.decimal  "tax_payable",                       precision: 7, scale: 2
    t.datetime "created_at",                                                null: false
    t.datetime "updated_at",                                                null: false
  end

  add_index "theater_seats", ["theater_screen_id"], name: "index_theater_seats_on_theater_screen_id", using: :btree

  create_table "theater_staffs", force: :cascade do |t|
    t.integer  "user_id",             limit: 4
    t.integer  "theater_id",          limit: 4
    t.integer  "staff_permission_id", limit: 4
    t.boolean  "is_deleted"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "theater_staffs", ["staff_permission_id"], name: "index_theater_staffs_on_staff_permission_id", using: :btree
  add_index "theater_staffs", ["theater_id"], name: "index_theater_staffs_on_theater_id", using: :btree
  add_index "theater_staffs", ["user_id"], name: "index_theater_staffs_on_user_id", using: :btree

  create_table "theaters", force: :cascade do |t|
    t.integer  "user_id",       limit: 4
    t.string   "name",          limit: 255
    t.integer  "phone",         limit: 4
    t.string   "address",       limit: 255
    t.string   "city",          limit: 255
    t.string   "state",         limit: 255
    t.string   "country",       limit: 255
    t.integer  "pincode",       limit: 4
    t.string   "unique_key",    limit: 255
    t.integer  "total_screens", limit: 4
    t.boolean  "enable"
    t.boolean  "is_deleted"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "theaters", ["user_id"], name: "index_theaters_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "fullname",               limit: 255
    t.date     "dob"
    t.string   "gender",                 limit: 255
    t.string   "profile_pic",            limit: 255
    t.text     "address",                limit: 65535
    t.string   "city",                   limit: 255
    t.string   "state",                  limit: 255
    t.string   "country",                limit: 255
    t.string   "pincode",                limit: 255
    t.string   "role",                   limit: 255
    t.string   "account",                limit: 255
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vouchers", force: :cascade do |t|
    t.integer  "theater_id",        limit: 4
    t.integer  "theater_screen_id", limit: 4
    t.string   "name",              limit: 255
    t.string   "description",       limit: 255
    t.decimal  "price",                         precision: 7, scale: 2
    t.boolean  "is_deleted"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "vouchers", ["theater_id"], name: "index_vouchers_on_theater_id", using: :btree
  add_index "vouchers", ["theater_screen_id"], name: "index_vouchers_on_theater_screen_id", using: :btree

  add_foreign_key "answers", "questions"
  add_foreign_key "booked_seats", "bookings"
  add_foreign_key "bookings", "screenings"
  add_foreign_key "bookings", "users"
  add_foreign_key "comments", "communities"
  add_foreign_key "comments", "users"
  add_foreign_key "communities", "movies"
  add_foreign_key "communities", "users"
  add_foreign_key "genre_movies", "genres"
  add_foreign_key "genre_movies", "movies"
  add_foreign_key "language_movies", "languages"
  add_foreign_key "language_movies", "movies"
  add_foreign_key "movie_suggestions", "users"
  add_foreign_key "offers", "theaters"
  add_foreign_key "promotions", "movies"
  add_foreign_key "question_answers", "answers"
  add_foreign_key "question_answers", "questions"
  add_foreign_key "question_answers", "surveys"
  add_foreign_key "question_answers", "users"
  add_foreign_key "screenings", "movies"
  add_foreign_key "screenings", "offers"
  add_foreign_key "screenings", "theaters"
  add_foreign_key "screenings", "users"
  add_foreign_key "seat_prices", "theaters"
  add_foreign_key "theater_screens", "theaters"
  add_foreign_key "theater_seats", "theater_screens"
  add_foreign_key "theater_staffs", "staff_permissions"
  add_foreign_key "theater_staffs", "theaters"
  add_foreign_key "theater_staffs", "users"
  add_foreign_key "theaters", "users"
  add_foreign_key "vouchers", "theater_screens"
  add_foreign_key "vouchers", "theaters"
end
