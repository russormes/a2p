json.array!(@evidences) do |evidence|
  json.extract! evidence, :date_of_evidence, :description, :comment
  json.url evidence_url(evidence, format: :json)
end
