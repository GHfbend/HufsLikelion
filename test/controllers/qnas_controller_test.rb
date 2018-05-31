require 'test_helper'

class QnasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get qnas_index_url
    assert_response :success
  end

  test "should get show" do
    get qnas_show_url
    assert_response :success
  end

  test "should get new" do
    get qnas_new_url
    assert_response :success
  end

  test "should get create" do
    get qnas_create_url
    assert_response :success
  end

  test "should get edit" do
    get qnas_edit_url
    assert_response :success
  end

  test "should get update" do
    get qnas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get qnas_destroy_url
    assert_response :success
  end

end
