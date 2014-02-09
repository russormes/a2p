require 'test_helper'
#TODO Get test to pass
class AreaOfFocusControllerTest < ActionController::TestCase
  set_fixture_class :area_of_focu => AreaOfFocusController
  setup do
    @area_of_focu = area_of_focus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:area_of_focus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create area_of_focu" do
    assert_difference('AreaOfFocu.count') do
      post :create, area_of_focu: { area_of_focus: @area_of_focu.area_of_focus }
    end

    assert_redirected_to area_of_focu_path(assigns(:area_of_focu))
  end
  
  test "should show area_of_focu" do
    get :show, id: @area_of_focu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @area_of_focu
    assert_response :success
  end

  test "should update area_of_focu" do
    patch :update, id: @area_of_focu, area_of_focu: { area_of_focus: @area_of_focu.area_of_focus }
    assert_redirected_to area_of_focu_path(assigns(:area_of_focu))
  end

  test "should destroy area_of_focu" do
    assert_difference('AreaOfFocu.count', -1) do
      delete :destroy, id: @area_of_focu
    end

    assert_redirected_to area_of_focus_path
  end
end
