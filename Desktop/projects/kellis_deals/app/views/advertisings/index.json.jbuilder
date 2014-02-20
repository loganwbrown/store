json.array!(@advertisings) do |advertising|
  json.extract! advertising, :id, :size, :imgurl
  json.url advertising_url(advertising, format: :json)
end
