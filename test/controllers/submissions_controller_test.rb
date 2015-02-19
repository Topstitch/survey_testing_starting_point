require 'test_helper'

class SubmissionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should display correct number of questions" do
    get :new, {:survey_id => surveys(:one).id}
    assert_response :success
    assert_select("p.specific_questions",  surveys(:one).questions.length)
    # there seems to be a blank paragraph, maybe from the empty question...no matter what.  grumble grumble.
  end
end
