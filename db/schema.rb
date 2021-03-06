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

ActiveRecord::Schema.define(version: 20131121164913) do

  create_table "items", force: true do |t|
    t.string "weekday"
    t.string "item_name"
    t.string "item_picture"
    t.string "item_category"
    t.string "item_price"
    t.string "float"
  end

  create_table "orders", force: true do |t|
    t.integer "order_id"
    t.integer "item_id"
    t.string  "item_name"
    t.string  "item_picture"
    t.string  "item_category"
    t.integer "item_quantity"
    t.float   "item_price"
  end

  create_table "ordersummaries", force: true do |t|
    t.date    "order_date"
    t.float   "total_bill"
    t.integer "student_id"
    t.string  "order_status"
  end

  create_table "students", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password"
  end

end
