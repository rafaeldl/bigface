json.array!(@events) do |event|
  json.extract! event, :kind, :partner_id, :object_hash, :lat, :lon, :temp
  json.url event_url(event, format: :json)
end
