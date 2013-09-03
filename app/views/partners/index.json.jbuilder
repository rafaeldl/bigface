json.array!(@partners) do |partner|
  json.extract! partner, :name, :lat, :lon
  json.url partner_url(partner, format: :json)
end
