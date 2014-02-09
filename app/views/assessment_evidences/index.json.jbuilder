json.array!(@assessment_evidences) do |assessment_evidence|
  json.extract! assessment_evidence, :evidence_file, :comment
  json.url assessment_evidence_url(assessment_evidence, format: :json)
end
