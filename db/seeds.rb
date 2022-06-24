# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

patient = Patient.create!(
  name: Faker::Name.name,
  age: Faker::Number.number(digits: 2).to_s,
  gender: Faker::Gender.binary_type,
  no_reg: Faker::IDNumber.spanish_citizen_number,
  religion: "NaN",
  education: "S1",
  job_profession: Faker::Job.title,
  person_responsible: "father",
  payment_type: "payfazz"
)

anemnesa = Anemnesa.create!(
  main_complaint: Faker::Lorem.sentence,
  disease_hist_now: Faker::Lorem.sentence(word_count: 6),
  disease_hist_past:Faker::Lorem.sentence(word_count: 6),
  disease_hist_family: Faker::Lorem.sentence(word_count: 6)
)

physics_support_check = PhysicsSupportCheck.create!(
  physics_check: Faker::Lorem.sentence,
  support_check: Faker::Lorem.sentence
)

final_diag = FinalDiag.create!(
  main_diag: "Main Diagnosis",
  complicate_diag: "Complicated Diagnosis",
  comorbid_diag: "Comorbid Diagnosis",
)

diagnostic = Diagnostic.create!(
  work_diag: "Work Diagnosis",
  diff_diag: "Differential Diagnosis",
  final_diag_id: final_diag.id,
)

remedy_action = RemedyAction.create!(
  remedy: "Remedy",
  action: "Action",
)

service = Service.create!(
  service_name:  "Service Name",
)

management_plan = ManagementPlan.create!(
  therapy_plan: "Therapy Plan",
  advanced_plan: "Advanced Plan",
  educational_plan: "Educational Plan",
)

record = Record.create(
  date_time: Faker::Date.backward(days: 14),
  anamnesa_id: anemnesa.id,
  physics_support_check_id: physics_support_check.id,
  diagnostic_id: diagnostic.id,
  management_plan_id: management_plan.id,
  remedy_action_id: remedy_action.id,
)

ServiceList.create(
  record_id: record.id,
  service_id: service.id,
)

RecordList.create(
  record_id: record.id,
  patient_id: patient.id,
)