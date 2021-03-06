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

ActiveRecord::Schema.define(version: 20161125033745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumno_maestros", force: :cascade do |t|
    t.integer "alumno_id"
    t.integer "maestro_id"
  end

  add_index "alumno_maestros", ["alumno_id"], name: "index_alumno_maestros_on_alumno_id", using: :btree
  add_index "alumno_maestros", ["maestro_id"], name: "index_alumno_maestros_on_maestro_id", using: :btree

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maestros", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.string   "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maestros_salons", id: false, force: :cascade do |t|
    t.integer "maestro_id"
    t.integer "salon_id"
  end

  add_index "maestros_salons", ["maestro_id"], name: "index_maestros_salons_on_maestro_id", using: :btree
  add_index "maestros_salons", ["salon_id"], name: "index_maestros_salons_on_salon_id", using: :btree

  create_table "salons", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alumno_maestros", "alumnos"
  add_foreign_key "alumno_maestros", "maestros"
  add_foreign_key "maestros_salons", "maestros"
  add_foreign_key "maestros_salons", "salons"
end
