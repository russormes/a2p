json.array!(@pupil_sens) do |pupil_sen|
  json.extract! pupil_sen, 
  json.url pupil_sen_url(pupil_sen, format: :json)
end
