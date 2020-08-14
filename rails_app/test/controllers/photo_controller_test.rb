require 'test_helper'

class PhotoControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get photo_create_url
    assert_response :success
  end

  test "should get delete" do
    get photo_delete_url
    assert_response :success
  end

end
