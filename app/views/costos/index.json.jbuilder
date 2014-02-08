json.array!(@costos) do |costo|
  json.extract! costo, :id, :titulo, :contenido
  json.url costo_url(costo, format: :json)
end
