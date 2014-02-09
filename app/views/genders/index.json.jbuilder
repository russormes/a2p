json.array!(@genders) do |gender|
  json.extract! gender, :gender
  json.url gender_url(gender, format: :json)
end
