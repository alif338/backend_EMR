require "test_helper"

class RemedyActionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    remedy_action = RemedyAction.new
    assert_not remedy_action.valid?
  end

  test "should be valid when all parameter not null" do
    remedy_action = RemedyAction.new(
      record_id: Record.all.first.id,
      remedy: Faker::Lorem.sentence,
      action: Faker::Lorem.sentence,
    )
    assert remedy_action.valid?
  end
end
