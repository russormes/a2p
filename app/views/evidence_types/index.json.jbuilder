json.array!(@evidence_types) do |evidence_type|
  json.extract! evidence_type, :evidence_type
  json.url evidence_type_url(evidence_type, format: :json)
end
