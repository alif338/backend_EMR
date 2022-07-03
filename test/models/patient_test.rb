require "test_helper"

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save patient without identity" do
    patient = Patient.new
    assert_not patient.save
  end
end
