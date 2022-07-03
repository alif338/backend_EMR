require "test_helper"

class ServiceListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should be not valid when all parameter is null" do
    service_list = ServiceList.new
    assert_not service_list.valid?
  end

  test "should be valid when all parameter not null" do
    service_list = ServiceList.new(
      record_id: Record.all.first.id,
      service_id: Service.all.first.id,
    )
    assert service_list.valid?
  end
end
