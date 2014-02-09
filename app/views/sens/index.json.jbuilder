json.array!(@sens) do |sen|
  json.extract! sen, :sen_code
  json.url sen_url(sen, format: :json)
end
