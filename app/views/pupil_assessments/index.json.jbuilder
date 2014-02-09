json.array!(@pupil_assessments) do |pupil_assessment|
  json.extract! pupil_assessment, :date_assessed, :comment, :present
  json.url pupil_assessment_url(pupil_assessment, format: :json)
end
