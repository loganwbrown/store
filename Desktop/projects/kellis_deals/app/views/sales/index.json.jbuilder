json.array!(@sales) do |sale|
  json.extract! sale, :id, :name, :phone, :cars_sold
  json.url sale_url(sale, format: :json)
end
