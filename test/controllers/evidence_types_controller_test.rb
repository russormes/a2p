require 'test_helper'

class EvidenceTypesControllerTest < ActionController::TestCase
  setup do
    @evidence_type = evidence_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evidence_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evidence_type" do
    assert_difference('EvidenceType.count') do
      post :create, evidence_type: { evidence_type: @evidence_type.evidence_type }
    end

    assert_redirected_to evidence_type_path(assigns(:evidence_type))
  end

  test "should show evidence_type" do
    get :show, id: @evidence_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evidence_type
    assert_response :success
  end

  test "should update evidence_type" do
    patch :update, id: @evidence_type, evidence_type: { evidence_type: @evidence_type.evidence_type }
    assert_redirected_to evidence_type_path(assigns(:evidence_type))
  end

  test "should destroy evidence_type" do
    assert_difference('EvidenceType.count', -1) do
      delete :destroy, id: @evidence_type
    end

    assert_redirected_to evidence_types_path
  end
end
