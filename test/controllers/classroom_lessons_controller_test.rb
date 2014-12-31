require 'test_helper'

class ClassroomLessonsControllerTest < ActionController::TestCase
  setup do
    @classroom_lesson = classroom_lessons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classroom_lessons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classroom_lesson" do
    assert_difference('ClassroomLesson.count') do
      post :create, classroom_lesson: {  }
    end

    assert_redirected_to classroom_lesson_path(assigns(:classroom_lesson))
  end

  test "should show classroom_lesson" do
    get :show, id: @classroom_lesson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classroom_lesson
    assert_response :success
  end

  test "should update classroom_lesson" do
    patch :update, id: @classroom_lesson, classroom_lesson: {  }
    assert_redirected_to classroom_lesson_path(assigns(:classroom_lesson))
  end

  test "should destroy classroom_lesson" do
    assert_difference('ClassroomLesson.count', -1) do
      delete :destroy, id: @classroom_lesson
    end

    assert_redirected_to classroom_lessons_path
  end
end
