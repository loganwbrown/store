json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :Make, :Model, :Year, :Price
  json.url vehicle_url(vehicle, format: :json)
end
