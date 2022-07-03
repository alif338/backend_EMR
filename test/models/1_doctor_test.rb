require "test_helper"

class DoctorTestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should be not valid when all parameter is null" do
    doctor = Doctor.new
    assert_not doctor.valid?
  end

  test "should be valid when all parameter not null" do
    doctor = Doctor.new(
      name: Faker::Name.name,
      age: Faker::Number.number(digits: 2).to_s, 
      id_doctor: Faker::IDNumber.spanish_citizen_number
    )
    assert doctor.valid?
  end
end
