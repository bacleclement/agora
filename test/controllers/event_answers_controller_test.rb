require 'test_helper'

class EventAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get event_answers_new_url
    assert_response :success
  end

  test "should get create" do
    get event_answers_create_url
    assert_response :success
  end

  test "should get edit" do
    get event_answers_edit_url
    assert_response :success
  end

  test "should get update" do
    get event_answers_update_url
    assert_response :success
  end

  test "should get destroy" do
    get event_answers_destroy_url
    assert_response :success
  end

end
