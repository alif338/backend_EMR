require "test_helper"

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    patient = Patient.new
    assert_not patient.valid?
  end

  test "should be valid when all parameter not null" do
    patient = Patient.new(
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
    assert patient.valid?
  end

end
