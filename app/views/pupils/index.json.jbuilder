json.array!(@pupils) do |pupil|
  json.extract! pupil, :given_name, :family_name, :dob, :gender_ID
  json.url pupil_url(pupil, format: :json)
end
