json.array!(@pupil_groups) do |pupil_group|
  json.extract! pupil_group, 
  json.url pupil_group_url(pupil_group, format: :json)
end
