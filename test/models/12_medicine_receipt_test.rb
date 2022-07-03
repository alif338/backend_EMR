require "test_helper"

class MedicineReceiptTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    medicine_receipt = MedicineReceipt.new
    assert_not medicine_receipt.valid?
  end

  test "should be valid when all parameter not null" do
    medicine_receipt = MedicineReceipt.new(
      patient_id: Patient.all.first.id,
      date_time: Faker::Date.between(from: 1.year.ago, to: Date.today),
      medicine_receipt: Faker::Lorem.sentence,
      written_by: Faker::Name.name,
    )
    assert medicine_receipt.valid?
  end
end
