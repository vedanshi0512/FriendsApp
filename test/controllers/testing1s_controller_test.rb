require "test_helper"

class Testing1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testing1 = testing1s(:one)
  end

  test "should get index" do
    get testing1s_url
    assert_response :success
  end

  test "should get new" do
    get new_testing1_url
    assert_response :success
  end

  test "should create testing1" do
    assert_difference("Testing1.count") do
      post testing1s_url, params: { testing1: { email: @testing1.email, first_name: @testing1.first_name, last_name: @testing1.last_name, phone: @testing1.phone, twitter: @testing1.twitter } }
    end

    assert_redirected_to testing1_url(Testing1.last)
  end

  test "should show testing1" do
    get testing1_url(@testing1)
    assert_response :success
  end

  test "should get edit" do
    get edit_testing1_url(@testing1)
    assert_response :success
  end

  test "should update testing1" do
    patch testing1_url(@testing1), params: { testing1: { email: @testing1.email, first_name: @testing1.first_name, last_name: @testing1.last_name, phone: @testing1.phone, twitter: @testing1.twitter } }
    assert_redirected_to testing1_url(@testing1)
  end

  test "should destroy testing1" do
    assert_difference("Testing1.count", -1) do
      delete testing1_url(@testing1)
    end

    assert_redirected_to testing1s_url
  end
end
