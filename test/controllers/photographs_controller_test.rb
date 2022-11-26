require "test_helper"

class PhotographsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get photographs_new_url
    assert_response :success
  end

  test "should get edit" do
    get photographs_edit_url
    assert_response :success
  end

  test "should get update" do
    get photographs_update_url
    assert_response :success
  end

  test "should get show" do
    get photographs_show_url
    assert_response :success
  end

  test "should get delete" do
    get photographs_delete_url
    assert_response :success
  end
end
