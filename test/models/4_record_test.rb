require "test_helper"

class RecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    record = Record.new
    assert_not record.valid?
  end

  test "should be valid when all parameter not null" do
    record = Record.new(
      date_time: Faker::Date.between(from: 1.year.ago, to: Date.today),
      signature_name: Faker::Name.name,
      patient_id: Patient.all.first.id
    )
    assert record.valid?
  end
end
