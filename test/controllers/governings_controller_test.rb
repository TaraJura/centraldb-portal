require "test_helper"

class GoverningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @governing = governings(:one)
  end

  test "should get index" do
    get governings_url
    assert_response :success
  end

  test "should get new" do
    get new_governing_url
    assert_response :success
  end

  test "should create governing" do
    assert_difference("Governing.count") do
      post governings_url, params: { governing: { customer_id: @governing.customer_id, expires: @governing.expires, superadmin: @governing.superadmin, user_id: @governing.user_id } }
    end

    assert_redirected_to governing_url(Governing.last)
  end

  test "should show governing" do
    get governing_url(@governing)
    assert_response :success
  end

  test "should get edit" do
    get edit_governing_url(@governing)
    assert_response :success
  end

  test "should update governing" do
    patch governing_url(@governing), params: { governing: { customer_id: @governing.customer_id, expires: @governing.expires, superadmin: @governing.superadmin, user_id: @governing.user_id } }
    assert_redirected_to governing_url(@governing)
  end

  test "should destroy governing" do
    assert_difference("Governing.count", -1) do
      delete governing_url(@governing)
    end

    assert_redirected_to governings_url
  end
end
