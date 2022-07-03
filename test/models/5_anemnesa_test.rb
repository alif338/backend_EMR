require "test_helper"

class AnemnesaTest < ActiveSupport::TestCase
  test "should not be valid when no record id" do
    anemnesa = Anemnesa.new
    assert_not anemnesa.valid?
  end

  test "should be valid when all parameter not null" do
    anemnesa = Anemnesa.new(
      record_id: Record.all.first.id,
      main_complaint: Faker::Lorem.sentence,
      disease_hist_now: Faker::Lorem.sentence(word_count: 6),
      disease_hist_past:Faker::Lorem.sentence(word_count: 6),
      disease_hist_family: Faker::Lorem.sentence(word_count: 6)
    )
    assert anemnesa.valid?
  end
end
