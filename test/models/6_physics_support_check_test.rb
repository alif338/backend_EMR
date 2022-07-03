require "test_helper"

class PhysicsSupportCheckTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    physics_support_check = PhysicsSupportCheck.new
    assert_not physics_support_check.valid?
  end

  test "should be valid when all parameter not null" do
    physics_support_check = PhysicsSupportCheck.new(
      record_id: Record.all.first.id,
      physics_check: Faker::Lorem.sentence,
      support_check: Faker::Lorem.sentence,
    )
    assert physics_support_check.valid?
  end
end
