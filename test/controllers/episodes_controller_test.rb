require 'test_helper'

class EpisodesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should not get index without authentication" do
    get episodes_url, as: :json
    assert_response :unauthorized
  end

  test "should get index with authentication" do
    user = users(:one)
    get episodes_url, as: :json, headers: { Authorization: "Token token=#{user.token}" }
    assert_response :success
  end
end
