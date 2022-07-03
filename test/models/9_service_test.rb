require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    service = Service.new
    assert_not service.valid?
  end

  test "should be valid when all parameter not null" do
    service = Service.new(
      service_name: "บริการที่ 1",
    )
    assert service.valid?
  end
end
