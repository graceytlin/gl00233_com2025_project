require 'test_helper'

class ShiftsControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::ControllerHelpers
  include Devise::Test::IntegrationHelpers
  
  setup do
    @shift = shifts(:one)
    @timesheet = timesheets(:one)
    @employee = employees(:one)
    sign_in @employee
  end

  test "should get index" do
    get shifts_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_url
    assert_response :success
  end

  test "should create shift" do
    assert_difference('Shift.count') do
      post shifts_url, params: { shift: { clock_in: @shift.clock_in, clock_out: @shift.clock_out, date: @shift.date, end_time: @shift.end_time, paid: @shift.paid, start_time: @shift.start_time, timesheet_id: @timesheet } }
    end

    assert_redirected_to shift_url(Shift.last)
  end

  test "should show shift" do
    get shift_url(@shift)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_url(@shift)
    assert_response :success
  end

  test "should update shift" do
    patch shift_url(@shift), params: { shift: { clock_in: @shift.clock_in, clock_out: @shift.clock_out, date: @shift.date, end_time: @shift.end_time, paid: @shift.paid, start_time: @shift.start_time, timesheet_id: @timesheet } }
    assert_redirected_to shift_url(@shift)
  end

  test "should destroy shift" do
    assert_difference('Shift.count', -1) do
      delete shift_url(@shift)
    end

    assert_redirected_to shifts_url
  end
end
