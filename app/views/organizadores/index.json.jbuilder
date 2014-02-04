json.array!(@organizadores) do |organizador|
  json.extract! organizador, :id, :titulo, :contenido
  json.url organizador_url(organizador, format: :json)
end
