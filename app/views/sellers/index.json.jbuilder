json.array!(@sellers) do |seller|
  json.extract! seller, :id, :name, :email, :phone
  json.url seller_url(seller, format: :json)
end
