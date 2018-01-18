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

ActiveRecord::Schema.define(version: 20180118145844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "patterns", force: :cascade do |t|
    t.string "url"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "colors", default: [["rgb(150, 187, 187)", "rgb(97, 137, 133)", "rgb(65, 69, 53)", "rgb(242, 227, 188)", "rgb(193, 152, 117)"], ["rgb(27, 6, 94)", "rgb(255, 71, 218)", "rgb(255, 135, 171)", "rgb(252, 200, 194)", "rgb(245, 236, 205)"], ["rgb(8, 96, 95)", "rgb(23, 126, 137)", "rgb(89, 131, 129)", "rgb(142, 147, 109)", "rgb(162, 173, 89)"], ["rgb(219, 213, 110)", "rgb(136, 171, 117)", "rgb(45, 147, 173)", "rgb(125, 124, 132)", "rgb(222, 143, 110)"], ["rgb(203, 212, 194)", "rgb(219, 235, 192)", "rgb(195, 178, 153)", "rgb(129, 83, 85)", "rgb(82, 50, 73)"]], array: true
  end

end
