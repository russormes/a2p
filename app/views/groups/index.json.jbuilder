json.array!(@groups) do |group|
  json.extract! group, :learning_group
  json.url group_url(group, format: :json)
end
