require "test_helper"

class ManagementPlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    management_plan = ManagementPlan.new
    assert_not management_plan.valid?
  end

  test "should be valid when all parameter not null" do
    management_plan = ManagementPlan.new(
      record_id: Record.all.first.id,
      therapy_plan: Faker::Lorem.sentence,
      advanced_plan: Faker::Lorem.sentence,
      educational_plan: Faker::Lorem.sentence,
    )
    assert management_plan.valid?
  end
end
