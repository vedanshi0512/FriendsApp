require "application_system_test_case"

class Testing1sTest < ApplicationSystemTestCase
  setup do
    @testing1 = testing1s(:one)
  end

  test "visiting the index" do
    visit testing1s_url
    assert_selector "h1", text: "Testing1s"
  end

  test "should create testing1" do
    visit testing1s_url
    click_on "New testing1"

    fill_in "Email", with: @testing1.email
    fill_in "First name", with: @testing1.first_name
    fill_in "Last name", with: @testing1.last_name
    fill_in "Phone", with: @testing1.phone
    fill_in "Twitter", with: @testing1.twitter
    click_on "Create Testing1"

    assert_text "Testing1 was successfully created"
    click_on "Back"
  end

  test "should update Testing1" do
    visit testing1_url(@testing1)
    click_on "Edit this testing1", match: :first

    fill_in "Email", with: @testing1.email
    fill_in "First name", with: @testing1.first_name
    fill_in "Last name", with: @testing1.last_name
    fill_in "Phone", with: @testing1.phone
    fill_in "Twitter", with: @testing1.twitter
    click_on "Update Testing1"

    assert_text "Testing1 was successfully updated"
    click_on "Back"
  end

  test "should destroy Testing1" do
    visit testing1_url(@testing1)
    click_on "Destroy this testing1", match: :first

    assert_text "Testing1 was successfully destroyed"
  end
end
