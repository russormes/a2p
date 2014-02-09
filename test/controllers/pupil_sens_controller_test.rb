require 'test_helper'

class PupilSensControllerTest < ActionController::TestCase
  setup do
    @pupil_sen = pupil_sens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pupil_sens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pupil_sen" do
    assert_difference('PupilSen.count') do
      post :create, pupil_sen: {  }
    end

    assert_redirected_to pupil_sen_path(assigns(:pupil_sen))
  end

  test "should show pupil_sen" do
    get :show, id: @pupil_sen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pupil_sen
    assert_response :success
  end

  test "should update pupil_sen" do
    patch :update, id: @pupil_sen, pupil_sen: {  }
    assert_redirected_to pupil_sen_path(assigns(:pupil_sen))
  end

  test "should destroy pupil_sen" do
    assert_difference('PupilSen.count', -1) do
      delete :destroy, id: @pupil_sen
    end

    assert_redirected_to pupil_sens_path
  end
end
