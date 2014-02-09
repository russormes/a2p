require 'test_helper'

class PupilGroupsControllerTest < ActionController::TestCase
  setup do
    @pupil_group = pupil_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pupil_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pupil_group" do
    assert_difference('PupilGroup.count') do
      post :create, pupil_group: {  }
    end

    assert_redirected_to pupil_group_path(assigns(:pupil_group))
  end

  test "should show pupil_group" do
    get :show, id: @pupil_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pupil_group
    assert_response :success
  end

  test "should update pupil_group" do
    patch :update, id: @pupil_group, pupil_group: {  }
    assert_redirected_to pupil_group_path(assigns(:pupil_group))
  end

  test "should destroy pupil_group" do
    assert_difference('PupilGroup.count', -1) do
      delete :destroy, id: @pupil_group
    end

    assert_redirected_to pupil_groups_path
  end
end
