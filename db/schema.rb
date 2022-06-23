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

ActiveRecord::Schema.define(version: 2022_06_23_020104) do

  create_table "anemnesas", force: :cascade do |t|
    t.text "main_complaint"
    t.text "disease_hist_now"
    t.text "disease_hist_past"
    t.text "disease_hist_family"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "diagnostics", force: :cascade do |t|
    t.text "work_diag"
    t.text "diff_diag"
    t.integer "final_diag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "final_diags", force: :cascade do |t|
    t.text "main_diag"
    t.text "complicate_diag"
    t.text "comorbid_diag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "management_plans", force: :cascade do |t|
    t.text "therapy_plan"
    t.text "advanced_plan"
    t.text "educational_plan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "gender"
    t.string "no_reg"
    t.string "religion"
    t.string "education"
    t.string "job_profession"
    t.string "person_responsible"
    t.string "payment_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "physics_support_checks", force: :cascade do |t|
    t.text "physics_check"
    t.text "support_check"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "record_lists", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "record_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "records", force: :cascade do |t|
    t.string "date_time"
    t.integer "anamnesa_id"
    t.integer "physics_support_check_id"
    t.integer "diagnostic_id"
    t.integer "management_plan_id"
    t.integer "remedy_action_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "remedy_actions", force: :cascade do |t|
    t.text "remedy"
    t.text "action"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_lists", force: :cascade do |t|
    t.integer "record_id"
    t.integer "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "service_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
