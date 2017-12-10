require 'test_helper'

class EpisodesControllerTest < ActionDispatch::IntegrationTest

  test "should not get index without token" do
    get episodes_url, as: :json
    assert_response :unauthorized
  end

  test "should get index with token" do
    user = users(:one)
    get episodes_url, as: :json, headers: { Authorization: "Token token=#{user.token}" }
    assert_response :success
  end
end
