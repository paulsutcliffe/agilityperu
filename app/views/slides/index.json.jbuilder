json.array!(@slides) do |slide|
  json.extract! slide, :id, :imagen, :titulo
  json.url slide_url(slide, format: :json)
end
