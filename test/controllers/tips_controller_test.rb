require 'test_helper'

class TipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tips_index_url
    assert_response :success
  end

  test "should get new" do
    get tips_new_url
    assert_response :success
  end

  test "should get create" do
    get tips_create_url
    assert_response :success
  end

  test "should get edit" do
    get tips_edit_url
    assert_response :success
  end

  test "should get update" do
    get tips_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tips_destroy_url
    assert_response :success
  end

end
