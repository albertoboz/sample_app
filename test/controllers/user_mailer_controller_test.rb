require 'test_helper'

class UserMailerControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_form" do
    get user_mailer_contact_form_url
    assert_response :success
  end

end
