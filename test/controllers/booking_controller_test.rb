require "test_helper"

class BookingControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get booking_new_url
    assert_response :success
  end

  test "should get update" do
    get booking_update_url
    assert_response :success
  end

  test "should get create" do
    get booking_create_url
    assert_response :success
  end

  test "should get pay" do
    get booking_pay_url
    assert_response :success
  end
end
