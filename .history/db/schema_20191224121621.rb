# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

    create_table "answers", force: :cascade do |t|
        t.text "matter"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.integer "questions_id"
        t.boolean "correctkey"
        t.index ["question_id"], name: "index_answers_on_question_id"
    end

    create_table "events", force: :cascade do |t|
        t.decimal "score"
        t.decimal "current_question"
        t.datetime "last_access"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.integer "user_id"
        t.integer "quiz_id"
        t.decimal "highscore"
        t.index ["quiz_id"], name: "index_events_on_quiz_id"
        t.index ["user_id"], name: "index_events_on_user_id"
    end

    create_table "genres", force: :cascade do |t|
        t.string "title"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
    end

    create_table "questions", force: :cascade do |t|
        t.text "matter"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.integer "quiz_id"
        t.index ["quiz_id"], name: "index_questions_on_quiz_id"
    end

    create_table "quizzes", force: :cascade do |t|
        t.string "title"
        t.text "desc"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.integer "subgenre_id"
        t.index ["subgenre_id"], name: "index_quizzes_on_subgenre_id"
    end

    create_table "subgenres", force: :cascade do |t|
        t.string "title"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.integer "genre_id"
        t.index ["genre_id"], name: "index_subgenres_on_genre_id"
    end

    create_table "users", force: :cascade do |t|
        t.string "name", null: false
        t.string "username", null: false
        t.boolean "isadmin", default: false
        t.string "email", default: false
        t.string "encrypted_password", default: "", null: false
        t.string "reset_password_token"
    end
end
