require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get photos_feed_url
    assert_response :success
  end

  test "should get discover" do
    get photos_discover_url
    assert_response :success
  end

  test "should get profile" do
    get photos_profile_url
    assert_response :success
  end

end
