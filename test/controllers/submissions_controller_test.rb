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
  end

  test "should post render SOMETHING" do
    post :create, {:survey_id => surveys(:one).id}
    assert_response :success
    assert_template "show, {:survey_id => surveys(:one).id}"
  end

  # test "should get redirect SOMETHING" do
  #   get :
  #   assert_redirected_to _path
  # end
end
