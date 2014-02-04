json.array!(@streamings) do |streaming|
  json.extract! streaming, :id, :codigo_embed
  json.url streaming_url(streaming, format: :json)
end
