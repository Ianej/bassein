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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120713073131) do

  create_table "groups", :force => true do |t|
    t.string   "name_group"
    t.integer  "number_of_men",   :default => 0
    t.integer  "number_of_women", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", :force => true do |t|
    t.string   "name_instructor"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pools", :force => true do |t|
    t.integer  "size_pool",         :default => 0
    t.integer  "men_locker_room",   :default => 0
    t.integer  "women_locker_room", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "training_times", :force => true do |t|
    t.integer  "group_id"
    t.string   "day_of_the_week"
    t.time     "time_workout"
    t.time     "duration_of_workout"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainings", :force => true do |t|
    t.integer  "instructor_id"
    t.integer  "group_id"
    t.integer  "training_time_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
