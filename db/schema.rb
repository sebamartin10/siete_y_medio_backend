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

ActiveRecord::Schema[7.0].define(version: 2022_06_14_135607) do
  create_table "cards", force: :cascade do |t|
    t.string "symbol"
    t.integer "number"
    t.integer "points"
    t.string "denomination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_sessions", force: :cascade do |t|
    t.integer "maxAmountOfPlayers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_bets", force: :cascade do |t|
    t.integer "chips100_amount"
    t.integer "chips250_amount"
    t.integer "chips500_amount"
    t.integer "chips1k_amount"
    t.integer "chips5k_amount"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id"
    t.integer "round_id"
  end

  create_table "player_cards", force: :cascade do |t|
    t.boolean "is_card_visible"
    t.integer "player_hand_id", null: false
    t.integer "card_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_player_cards_on_card_id"
    t.index ["player_hand_id"], name: "index_player_cards_on_player_hand_id"
  end

  create_table "player_hands", force: :cascade do |t|
    t.integer "total_points"
    t.integer "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "round_id", null: false
    t.index ["player_id"], name: "index_player_hands_on_player_id"
    t.index ["round_id"], name: "index_player_hands_on_round_id"
  end

  create_table "player_sessions", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position_in_board"
    t.index ["player_id"], name: "index_player_sessions_on_player_id"
    t.index ["session_id"], name: "index_player_sessions_on_session_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.string "bank"
    t.boolean "is_current_round"
    t.string "previous_turn"
    t.string "current_turn"
    t.string "next_turn"
    t.integer "session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_rounds_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "maxAmountOfPlayers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treasures", force: :cascade do |t|
    t.integer "chips100_amount"
    t.integer "chips250_amount"
    t.integer "chips500_amount"
    t.integer "chips1k_amount"
    t.integer "chips5k_amount"
    t.integer "total"
    t.integer "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_treasures_on_player_id"
  end

  add_foreign_key "player_cards", "cards"
  add_foreign_key "player_cards", "player_hands"
  add_foreign_key "player_hands", "players"
  add_foreign_key "player_hands", "rounds"
  add_foreign_key "player_sessions", "players"
  add_foreign_key "player_sessions", "sessions"
  add_foreign_key "rounds", "sessions"
  add_foreign_key "treasures", "players"
end
