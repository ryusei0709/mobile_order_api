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

ActiveRecord::Schema[7.2].define(version: 2024_12_30_071213) do
  create_table "cart_items", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "cart_id", null: false, comment: "注文ユーザーID", unsigned: true
    t.bigint "menu_id", null: false, comment: "メニューID", unsigned: true
    t.bigint "quantity", null: false, comment: "個数", unsigned: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["menu_id"], name: "index_cart_items_on_menu_id"
  end

  create_table "carts", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, comment: "ユーザーID", unsigned: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "corporations", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_categories", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "restaurant_id", null: false, comment: "レストランID", unsigned: true
    t.string "name", null: false, comment: "カテゴリー名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_menu_categories_on_restaurant_id"
  end

  create_table "menus", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "menu_category_id", null: false, comment: "メニューカテゴリーID", unsigned: true
    t.bigint "restaurant_id", null: false, comment: "レストランID", unsigned: true
    t.string "title", null: false, comment: "メニュータイトル"
    t.string "description", null: false, comment: "メニュー説明"
    t.string "image", null: false, comment: "メニュー画像"
    t.bigint "price", null: false, comment: "値段", unsigned: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_category_id"], name: "index_menus_on_menu_category_id"
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "orders", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, comment: "注文ユーザーID", unsigned: true
    t.bigint "menu_id", null: false, comment: "メニューID", unsigned: true
    t.bigint "restaurant_id", null: false, comment: "レストランID", unsigned: true
    t.bigint "restaurant_tabel_id", null: false, comment: "レストランテーブルID", unsigned: true
    t.bigint "total_price", null: false, comment: "合計金額", unsigned: true
    t.integer "is_order_status", limit: 1, default: 0, null: false, comment: "注文ステータス", unsigned: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_orders_on_menu_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["restaurant_tabel_id"], name: "index_orders_on_restaurant_tabel_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "restaurant_tabels", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "restaurant_id", null: false, comment: "レストランID", unsigned: true
    t.string "table_number", null: false, comment: "テーブルナンバー"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_restaurant_tabels_on_restaurant_id"
  end

  create_table "restaurants", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "corporation_id", null: false, comment: "法人ID", unsigned: true
    t.string "name", null: false, comment: "店名"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["corporation_id"], name: "index_restaurants_on_corporation_id"
  end

  create_table "users", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "provider", default: "email", null: false, comment: "プロバイダー"
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false, comment: "Deviseが管理するパスワードをハッシュ化した文字列"
    t.string "reset_password_token", comment: "パスワードリセット用のトークン"
    t.datetime "reset_password_sent_at", comment: "パスワードリセットトークンを送信した日時"
    t.boolean "allow_password_change", default: false, comment: "パスワード変更を強制するかどうかを表すフラグ"
    t.datetime "remember_created_at", comment: "一定期間、自動ログインを継続するための仕組み"
    t.string "confirmation_token", comment: "メールアドレス確認（いわゆるサインアップ時のメール認証）用のトークン"
    t.datetime "confirmed_at", comment: "メールアドレス認証が完了した日時"
    t.datetime "confirmation_sent_at", comment: "メールアドレス認証のためのメールを送った日時"
    t.string "name", comment: "ユーザー名"
    t.string "email", comment: "メールアドレス"
    t.text "tokens", comment: "devise_token_auth 固有のトークン管理に使われる"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "menus"
  add_foreign_key "carts", "users"
  add_foreign_key "menu_categories", "restaurants"
  add_foreign_key "menus", "menu_categories"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "orders", "menus"
  add_foreign_key "orders", "restaurant_tabels"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "users"
  add_foreign_key "restaurant_tabels", "restaurants"
  add_foreign_key "restaurants", "corporations"
end
