require 'test_helper'

class UserAgentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_agents_index_url
    assert_response :success
  end

end
