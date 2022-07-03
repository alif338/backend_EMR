require "test_helper"

class OperatorTestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should be not valid when all parameter is null" do
    operator = Operator.new
    assert_not operator.valid?
  end

  test "should be valid when all parameter not null" do
    operator = Operator.new(
      name: Faker::Name.name,
      age: Faker::Number.number(digits: 2).to_s, 
      id_operator: Faker::IDNumber.spanish_citizen_number
    )
    assert operator.valid?
  end
end
