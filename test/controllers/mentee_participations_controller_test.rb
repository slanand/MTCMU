require 'test_helper'

class MenteeParticipationsControllerTest < ActionController::TestCase
  setup do
    @mentee_participation = mentee_participations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mentee_participations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mentee_participation" do
    assert_difference('MenteeParticipation.count') do
      post :create, mentee_participation: {  }
    end

    assert_redirected_to mentee_participation_path(assigns(:mentee_participation))
  end

  test "should show mentee_participation" do
    get :show, id: @mentee_participation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mentee_participation
    assert_response :success
  end

  test "should update mentee_participation" do
    patch :update, id: @mentee_participation, mentee_participation: {  }
    assert_redirected_to mentee_participation_path(assigns(:mentee_participation))
  end

  test "should destroy mentee_participation" do
    assert_difference('MenteeParticipation.count', -1) do
      delete :destroy, id: @mentee_participation
    end

    assert_redirected_to mentee_participations_path
  end
end
