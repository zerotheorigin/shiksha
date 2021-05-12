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

ActiveRecord::Schema.define(version: 2020_07_31_122141) do

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "custom_forms_admission_forms", force: :cascade do |t|
    t.string "name"
    t.string "fathers_name"
    t.string "age"
    t.string "gender"
    t.date "dob"
    t.text "address"
    t.string "phone_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_anand_yogo_lists", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "email"
    t.string "gender"
    t.string "employer"
    t.date "dob"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_custom_forms_anand_yogo_lists_on_email", unique: true
  end

  create_table "custom_forms_kannan_forms", force: :cascade do |t|
    t.text "question1"
    t.text "question2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_sanjeevi_forms", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.date "dob"
    t.text "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_custom_forms_sanjeevi_forms_on_email", unique: true
  end

  create_table "custom_forms_sarat_demo_1_forms", force: :cascade do |t|
    t.string "Q1"
    t.string "Q2"
    t.string "Q3"
    t.string "Q4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_sriram_english_q_papers", force: :cascade do |t|
    t.text "Q1"
    t.text "Q2"
    t.text "Q3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_sundar_assign_1_forms", force: :cascade do |t|
    t.string "Q1"
    t.string "Q2"
    t.string "Q3"
    t.string "Q4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_sundar_assign_2_forms", force: :cascade do |t|
    t.string "Q1"
    t.string "Q2"
    t.string "Q3"
    t.string "Q4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_sundar_assign_3_forms", force: :cascade do |t|
    t.string "Q1"
    t.string "Q2"
    t.string "Q3"
    t.string "Q4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_sundar_assign_4_forms", force: :cascade do |t|
    t.string "Q1"
    t.string "Q2"
    t.string "Q3"
    t.string "Q4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_sundar_form2s", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_tamil_forms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "dob"
    t.string "place"
    t.string "district"
    t.string "pincode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "custom_forms_test_forms", force: :cascade do |t|
    t.string "Q1"
    t.string "Q2"
    t.string "Q3"
    t.string "Q4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gokul_demos", force: :cascade do |t|
    t.integer "employee_no"
    t.string "name"
    t.string "designation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "infolets", force: :cascade do |t|
    t.integer "student_id"
    t.integer "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "school_id"
    t.integer "parent_id"
    t.string "role"
    t.integer "subject_id"
    t.integer "section_id"
    t.integer "tcontract_id"
    t.string "scf_name"
    t.string "scf_text"
    t.index ["parent_id"], name: "index_infolets_on_parent_id"
    t.index ["school_id"], name: "index_infolets_on_school_id"
    t.index ["section_id"], name: "index_infolets_on_section_id"
    t.index ["student_id"], name: "index_infolets_on_student_id"
    t.index ["subject_id"], name: "index_infolets_on_subject_id"
    t.index ["tcontract_id"], name: "index_infolets_on_tcontract_id"
    t.index ["teacher_id"], name: "index_infolets_on_teacher_id"
  end

  create_table "karthick_demos", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "gender"
    t.string "skills"
    t.string "interests"
    t.string "hobbies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "city"
    t.string "board"
    t.string "level"
    t.string "street1"
    t.string "street2"
    t.string "phone1"
    t.string "phone2"
    t.string "mobile1"
    t.string "mobile2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "location", "city"], name: "index_schools_on_name_and_location_and_city", unique: true
  end

  create_table "sections", force: :cascade do |t|
    t.string "std"
    t.string "sec"
    t.integer "school_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["school_id"], name: "index_sections_on_school_id"
  end

  create_table "sridhar_forms", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "sex"
    t.date "dob"
    t.date "doj"
    t.string "designation"
    t.string "employer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "DOB"
    t.date "DOJS"
    t.string "admission_no"
    t.string "exam_reg_no"
    t.string "gender"
    t.string "street1"
    t.string "street2"
    t.string "location"
    t.string "city"
    t.string "pincode"
    t.string "father_name"
    t.string "mother_name"
    t.string "father_occupation"
    t.string "mother_occupation"
    t.string "father_qualification"
    t.string "mother_qualification"
    t.string "parent_work_street1"
    t.string "parent_work_street2"
    t.string "parent_work_location"
    t.string "parent_work_city"
    t.string "parent_work_pincode"
    t.string "father_mobile1"
    t.string "father_mobile2"
    t.string "father_work_ph"
    t.string "mother_mobile1"
    t.string "mother_mobile2"
    t.string "mother_work_ph"
    t.string "sibling1"
    t.string "sibling2"
    t.integer "section_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
    t.index ["section_id"], name: "index_students_on_section_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "sub_name"
    t.text "syllabus"
    t.date "ay_start"
    t.date "ay_end"
    t.integer "section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["section_id"], name: "index_subjects_on_section_id"
  end

  create_table "sundar_forms", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "address"
    t.text "profile"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "tcontracts", force: :cascade do |t|
    t.integer "subject_id", null: false
    t.integer "teacher_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subject_id"], name: "index_tcontracts_on_subject_id"
    t.index ["teacher_id"], name: "index_tcontracts_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "DOB"
    t.date "DOJS"
    t.string "staff_no"
    t.string "gender"
    t.string "street1"
    t.string "street2"
    t.string "location"
    t.string "city"
    t.string "pincode"
    t.string "qualification"
    t.string "family_work_street1"
    t.string "family_work_street2"
    t.string "family_work_location"
    t.string "family_work_city"
    t.string "family_work_pincode"
    t.string "family_mobile1"
    t.string "family_mobile2"
    t.string "family_work_ph"
    t.string "class_teacher"
    t.integer "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "subject"
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
    t.index ["subject_id"], name: "index_teachers_on_subject_id"
  end

  create_table "timetables", force: :cascade do |t|
    t.string "tt_day"
    t.string "tt_period"
    t.integer "section_id", null: false
    t.integer "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.time "start_time"
    t.time "end_time"
    t.index ["section_id"], name: "index_timetables_on_section_id"
    t.index ["subject_id"], name: "index_timetables_on_subject_id"
  end

  create_table "uma849_form5s", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "infolets", "schools"
  add_foreign_key "infolets", "sections"
  add_foreign_key "infolets", "students"
  add_foreign_key "infolets", "subjects"
  add_foreign_key "infolets", "tcontracts"
  add_foreign_key "infolets", "teachers"
  add_foreign_key "sections", "schools"
  add_foreign_key "students", "sections"
  add_foreign_key "subjects", "sections"
  add_foreign_key "taggings", "tags"
  add_foreign_key "tcontracts", "subjects"
  add_foreign_key "tcontracts", "teachers"
  add_foreign_key "teachers", "subjects"
  add_foreign_key "timetables", "sections"
  add_foreign_key "timetables", "subjects"
end
