# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Patient.create!(
  name: "Fulan",
  age: "30",
  gender: "male",
  no_reg: "12456",
  religion: "Islam",
  education: "S1",
  job_profession: "engineer",
  person_responsible: "father",
  payment_type: "payfazz"
)

Anemnesa.create!(
  main_complaint: "Main Complain",
  disease_hist_now: "Disease History Now",
  disease_hist_past: "Disease History Past",
  disease_hist_family: "Family History",
)

PhysicsSupportCheck.create!(
  physics_check: "Physics Check",
  support_check: "Support Check",
)

Diagnostic.create!(
  work_diag: "Work Diagnosis",
  diff_diag: "Differential Diagnosis",
  final_diag_id: 1,
)

FinalDiag.create!(
  main_diag: "Main Diagnosis",
  complicate_diag: "Complicated Diagnosis",
  comorbid_diag: "Comorbid Diagnosis",
)

RemedyAction.create!(
  remedy: "Remedy",
  action: "Action",
)

# ServiceList.create!(
#   record_id: 1,
#   service_id: 1
# )

Service.create!(
  service_name:  "Service Name",
)

ManagementPlan.create!(
  therapy_plan: "Therapy Plan",
  advanced_plan: "Advanced Plan",
  educational_plan: "Educational Plan",
)

# RecordList.create!(
#   record_id: 1,
#   patient_id: 1
# )

Record.create(
  
)