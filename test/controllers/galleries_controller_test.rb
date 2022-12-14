require "test_helper"

class GalleriesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get galleries_show_url
    assert_response :success
  end

  test "should get new" do
    get galleries_new_url
    assert_response :success
  end

  test "should get edit" do
    get galleries_edit_url
    assert_response :success
  end

  test "should get update" do
    get galleries_update_url
    assert_response :success
  end

  test "should get delete" do
    get galleries_delete_url
    assert_response :success
  end
end
