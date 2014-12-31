require 'test_helper'

class MenteeAttendancesControllerTest < ActionController::TestCase
  setup do
    @mentee_attendance = mentee_attendances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mentee_attendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mentee_attendance" do
    assert_difference('MenteeAttendance.count') do
      post :create, mentee_attendance: {  }
    end

    assert_redirected_to mentee_attendance_path(assigns(:mentee_attendance))
  end

  test "should show mentee_attendance" do
    get :show, id: @mentee_attendance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mentee_attendance
    assert_response :success
  end

  test "should update mentee_attendance" do
    patch :update, id: @mentee_attendance, mentee_attendance: {  }
    assert_redirected_to mentee_attendance_path(assigns(:mentee_attendance))
  end

  test "should destroy mentee_attendance" do
    assert_difference('MenteeAttendance.count', -1) do
      delete :destroy, id: @mentee_attendance
    end

    assert_redirected_to mentee_attendances_path
  end
end
