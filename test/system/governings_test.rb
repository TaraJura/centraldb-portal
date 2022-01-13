require "application_system_test_case"

class GoverningsTest < ApplicationSystemTestCase
  setup do
    @governing = governings(:one)
  end

  test "visiting the index" do
    visit governings_url
    assert_selector "h1", text: "Governings"
  end

  test "should create governing" do
    visit governings_url
    click_on "New governing"

    fill_in "Customer", with: @governing.customer_id
    fill_in "Expires", with: @governing.expires
    check "Superadmin" if @governing.superadmin
    fill_in "User", with: @governing.user_id
    click_on "Create Governing"

    assert_text "Governing was successfully created"
    click_on "Back"
  end

  test "should update Governing" do
    visit governing_url(@governing)
    click_on "Edit this governing", match: :first

    fill_in "Customer", with: @governing.customer_id
    fill_in "Expires", with: @governing.expires
    check "Superadmin" if @governing.superadmin
    fill_in "User", with: @governing.user_id
    click_on "Update Governing"

    assert_text "Governing was successfully updated"
    click_on "Back"
  end

  test "should destroy Governing" do
    visit governing_url(@governing)
    click_on "Destroy this governing", match: :first

    assert_text "Governing was successfully destroyed"
  end
end
