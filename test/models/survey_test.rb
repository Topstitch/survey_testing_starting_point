require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  test "title is required" do
    bad_survey = Survey.new(description: "Missing Something", author_id: 1)
    refute bad_survey.save
  end

  test "can save surveys" do
    assert_difference "Survey.count", 1 do
      Survey.create(title: "Why do you hate being sick?",
      description: "Please elaborate.", author_id: 2)
    end
  end
end
