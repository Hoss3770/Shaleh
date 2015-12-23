json.array!(@shalehs) do |shaleh|
  json.extract! shaleh, :id, :address, :rooms, :description, :aircon, :references
  json.url shaleh_url(shaleh, format: :json)
end
