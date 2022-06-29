# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# The patient faker may be comment out if you should generate patient new record only.

for i in 1..5 do
  if Doctor.all.empty?
    Doctor.create!([
      {name: Faker::Name.name,age: Faker::Number.number(digits: 2).to_s, id_doctor: Faker::IDNumber.spanish_citizen_number},
      {name: Faker::Name.name,age: Faker::Number.number(digits: 2).to_s, id_doctor: Faker::IDNumber.spanish_citizen_number},
      {name: Faker::Name.name,age: Faker::Number.number(digits: 2).to_s, id_doctor: Faker::IDNumber.spanish_citizen_number},
      {name: Faker::Name.name,age: Faker::Number.number(digits: 2).to_s, id_doctor: Faker::IDNumber.spanish_citizen_number},
      {name: Faker::Name.name,age: Faker::Number.number(digits: 2).to_s, id_doctor: Faker::IDNumber.spanish_citizen_number},
    ])
  end

  if Operator.all.empty?
    Operator.create!([
      {name: Faker::Name.name,age: Faker::Number.number(digits: 2).to_s, id_operator: Faker::IDNumber.spanish_foreign_citizen_number},
      {name: Faker::Name.name,age: Faker::Number.number(digits: 2).to_s, id_operator: Faker::IDNumber.spanish_foreign_citizen_number}
    ])
  end
  
  if Patient.all.empty?
    patients = Patient.create!([
      {
        name: Faker::Name.name,
        age: Faker::Number.number(digits: 2).to_s,
        gender: Faker::Gender.binary_type,
        religion: "NaN",
        education: "S1",
        job_profession: Faker::Job.title,
        alergical_hist: Faker::Lorem.sentence,
        member_type: "BPJS",
        no_medical_record: Faker::IDNumber.spanish_citizen_number
      },{
        name: Faker::Name.name,
        age: Faker::Number.number(digits: 2).to_s,
        gender: Faker::Gender.binary_type,
        religion: "NaN",
        education: "S1",
        job_profession: Faker::Job.title,
        alergical_hist: Faker::Lorem.sentence,
        member_type: "BPJS",
        no_medical_record: Faker::IDNumber.spanish_citizen_number
      },
    ])
  else
    patients = Patient.all
  end

  present_patient = patients.sample;
  present_doctor = Doctor.all.sample;
  present_date_time = Faker::Time.between(from: DateTime.now - 14, to: DateTime.now)
  
  record = Record.create!(
    patient_id: present_patient.id,
    date_time: present_date_time,
    signature_name: present_doctor.name,
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
    main_diag: "Main Diagnosis",
    complicate_diag: "Complicated Diagnosis",
    comorbid_diag: "Comorbid Diagnosis",
  )
  
  remedy_action = RemedyAction.create!(
    record_id: record.id,
    remedy: Faker::Lorem.sentence(word_count: 4),
    action: Faker::Lorem.sentence(word_count: 6),
  )
  
  if Service.all.empty?
    Service.create!([
      {service_name:  "Pelayanan Pemeriksaan Umum (Termasuk Surat Sehat)"},
      {service_name:  "Pelayanan Pemeriksaan Gigi"},
      {service_name:  "Pelayanan Gawat Darurat"},
      {service_name:  "Pelayanan KIA (Kesehatan Ibu dan Anak)"},
      {service_name:  "Pelayanan KB (Keluarga Berencana)"},
      {service_name:  "Pelayanan Laboratorium"},
      {service_name:  "Pelayanan Farmasi/Apotek (BPJS/Non BPJS)"},
      {service_name:  "Pelayanan Inkubator Gratis"},
      {service_name:  "Ambulance"},
      {service_name:  "Home Visit"},
    ])
  end
  
  management_plan = ManagementPlan.create!(
    record_id: record.id,
    therapy_plan: "Therapy Plan",
    advanced_plan: "Advanced Plan",
    educational_plan: "Educational Plan",
  )
  
  ServiceList.create(
    record_id: record.id,
    service_id: Service.all.sample.id,
  )

  MedicineReceipt.create!(
    patient_id: present_patient.id,
    date_time: present_date_time,
    medicine_receipt: Faker::Lorem.sentence(word_count: 6),
    written_by: present_doctor.name,
  )
end