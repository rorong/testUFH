require "test_helper"

class PrivacyPolicyControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get privacy_policy_welcome_url
    assert_response :success
  end
end
