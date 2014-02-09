require 'test_helper'

class SensControllerTest < ActionController::TestCase
  setup do
    @sen = sens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sen" do
    assert_difference('Sen.count') do
      post :create, sen: { sen_code: @sen.sen_code }
    end

    assert_redirected_to sen_path(assigns(:sen))
  end

  test "should show sen" do
    get :show, id: @sen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sen
    assert_response :success
  end

  test "should update sen" do
    patch :update, id: @sen, sen: { sen_code: @sen.sen_code }
    assert_redirected_to sen_path(assigns(:sen))
  end

  test "should destroy sen" do
    assert_difference('Sen.count', -1) do
      delete :destroy, id: @sen
    end

    assert_redirected_to sens_path
  end
end
