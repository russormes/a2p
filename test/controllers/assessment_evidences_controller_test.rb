require 'test_helper'

class AssessmentEvidencesControllerTest < ActionController::TestCase
  setup do
    @assessment_evidence = assessment_evidences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assessment_evidences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assessment_evidence" do
    assert_difference('AssessmentEvidence.count') do
      post :create, assessment_evidence: { comment: @assessment_evidence.comment, evidence_file: @assessment_evidence.evidence_file }
    end

    assert_redirected_to assessment_evidence_path(assigns(:assessment_evidence))
  end

  test "should show assessment_evidence" do
    get :show, id: @assessment_evidence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assessment_evidence
    assert_response :success
  end

  test "should update assessment_evidence" do
    patch :update, id: @assessment_evidence, assessment_evidence: { comment: @assessment_evidence.comment, evidence_file: @assessment_evidence.evidence_file }
    assert_redirected_to assessment_evidence_path(assigns(:assessment_evidence))
  end

  test "should destroy assessment_evidence" do
    assert_difference('AssessmentEvidence.count', -1) do
      delete :destroy, id: @assessment_evidence
    end

    assert_redirected_to assessment_evidences_path
  end
end
