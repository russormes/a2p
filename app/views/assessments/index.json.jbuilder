json.array!(@assessments) do |assessment|
  json.extract! assessment, :assessment_description
  json.url assessment_url(assessment, format: :json)
end
