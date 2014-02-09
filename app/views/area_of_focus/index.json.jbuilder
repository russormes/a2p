json.array!(@area_of_focus) do |area_of_focu|
  json.extract! area_of_focu, :area_of_focus
  json.url area_of_focu_url(area_of_focu, format: :json)
end
