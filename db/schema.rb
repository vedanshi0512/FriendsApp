
ActiveRecord::Schema[7.0].define(version: 2022_06_23_160528) do
  create_table "friends", force: :cascade do |t|
    t.string "first_name"
    t.string "Last_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testing1s", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
