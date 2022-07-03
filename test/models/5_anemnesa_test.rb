require "test_helper"

class AnemnesaTest < ActiveSupport::TestCase
  test "should not be valid when no record id" do
    anemnesa = Anemnesa.new
    assert_not anemnesa.valid?
  end
end
