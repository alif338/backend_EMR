require "test_helper"

class DiagnosticTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    diagnostic = Diagnostic.new
    assert_not diagnostic.valid?
  end

  test "should be valid when all parameter not null" do
    diagnostic = Diagnostic.new(
      record_id: Record.all.first.id,
      main_diag: Faker::Lorem.sentence,
      complicate_diag: Faker::Lorem.sentence,
      comorbid_diag: Faker::Lorem.sentence,
    )
    assert diagnostic.valid?
  end
end
