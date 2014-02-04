json.array!(@programas) do |programa|
  json.extract! programa, :id, :titulo, :contenido
  json.url programa_url(programa, format: :json)
end
