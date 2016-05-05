json.array!(@contestants) do |contestant|
  json.extract! contestant, :id, :learn
  json.url contestant_url(contestant, format: :json)
end
