# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# The patient faker may be comment out if you should generate patient new record only.
patient = Patient.create!(
  name: Faker::Name.name,
  age: Faker::Number.number(digits: 2).to_s,
  gender: Faker::Gender.binary_type,
  religion: "NaN",
  education: "S1",
  job_profession: Faker::Job.title,
  alergical_hist: Faker::Lorem.sentence,
  member_type: "BPJS",
  no_medical_record: Faker::IDNumber.spanish_citizen_number
)

record = Record.create(
  signature_name: Faker::Name.name_with_middle,
)

anemnesa = Anemnesa.create!(
  record_id: record.id,
  main_complaint: Faker::Lorem.sentence,
  disease_hist_now: Faker::Lorem.sentence(word_count: 6),
  disease_hist_past:Faker::Lorem.sentence(word_count: 6),
  disease_hist_family: Faker::Lorem.sentence(word_count: 6)
)

physics_support_check = PhysicsSupportCheck.create!(
  record_id: record.id,
  physics_check: Faker::Lorem.sentence,
  support_check: Faker::Lorem.sentence
)

diagnostic = Diagnostic.create!(
  record_id: record.id,
  work_diag: "Work Diagnosis",
  diff_diag: "Differential Diagnosis",
)

final_diag = FinalDiag.create!(
  diagnostic_id: diagnostic.id,
  main_diag: "Main Diagnosis",
  complicate_diag: "Complicated Diagnosis",
  comorbid_diag: "Comorbid Diagnosis",
)

remedy_action = RemedyAction.create!(
  record_id: record.id,
  remedy: "Remedy",
  action: "Action",
)

service = Service.create!(
  service_name:  "Service Name",
)

management_plan = ManagementPlan.create!(
  record_id: record.id,
  therapy_plan: "Therapy Plan",
  advanced_plan: "Advanced Plan",
  educational_plan: "Educational Plan",
)


ServiceList.create(
  record_id: record.id,
  service_id: service.id,
)

RecordList.create(
  record_id: record.id,
  patient_id: patient.id,
)