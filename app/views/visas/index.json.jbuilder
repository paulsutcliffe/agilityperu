json.array!(@visas) do |visa|
  json.extract! visa, :id, :titulo, :imagen
  json.url visa_url(visa, format: :json)
end
