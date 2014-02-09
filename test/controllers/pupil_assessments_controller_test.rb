require 'test_helper'

class PupilAssessmentsControllerTest < ActionController::TestCase
  setup do
    @pupil_assessment = pupil_assessments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pupil_assessments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pupil_assessment" do
    assert_difference('PupilAssessment.count') do
      post :create, pupil_assessment: { comment: @pupil_assessment.comment, date_assessed: @pupil_assessment.date_assessed, present: @pupil_assessment.present }
    end

    assert_redirected_to pupil_assessment_path(assigns(:pupil_assessment))
  end

  test "should show pupil_assessment" do
    get :show, id: @pupil_assessment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pupil_assessment
    assert_response :success
  end

  test "should update pupil_assessment" do
    patch :update, id: @pupil_assessment, pupil_assessment: { comment: @pupil_assessment.comment, date_assessed: @pupil_assessment.date_assessed, present: @pupil_assessment.present }
    assert_redirected_to pupil_assessment_path(assigns(:pupil_assessment))
  end

  test "should destroy pupil_assessment" do
    assert_difference('PupilAssessment.count', -1) do
      delete :destroy, id: @pupil_assessment
    end

    assert_redirected_to pupil_assessments_path
  end
end
