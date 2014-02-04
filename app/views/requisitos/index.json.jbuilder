json.array!(@requisitos) do |requisito|
  json.extract! requisito, :id, :pais, :contenido
  json.url requisito_url(requisito, format: :json)
end
