require "test_helper"

class GalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gallery_new_url
    assert_response :success
  end

  test "should get edit" do
    get gallery_edit_url
    assert_response :success
  end

  test "should get update" do
    get gallery_update_url
    assert_response :success
  end

  test "should get show" do
    get gallery_show_url
    assert_response :success
  end

  test "should get delete" do
    get gallery_delete_url
    assert_response :success
  end
end
