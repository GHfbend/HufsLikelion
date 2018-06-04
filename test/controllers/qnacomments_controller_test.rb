require 'test_helper'

class QnacommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get content:text" do
    get qnacomments_content:text_url
    assert_response :success
  end

  test "should get user:belongs_to" do
    get qnacomments_user:belongs_to_url
    assert_response :success
  end

  test "should get qna:belongs_to" do
    get qnacomments_qna:belongs_to_url
    assert_response :success
  end

  test "should get user_email:string" do
    get qnacomments_user_email:string_url
    assert_response :success
  end

end
