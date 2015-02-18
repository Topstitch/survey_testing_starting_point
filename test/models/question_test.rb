require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  test "question types are properly counted" do
    relation = Question.type_count
    assert_equal 3, relation[0].question_type_count
  end
end
