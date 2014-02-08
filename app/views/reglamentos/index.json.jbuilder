json.array!(@reglamentos) do |reglamento|
  json.extract! reglamento, :id, :titulo, :contenido
  json.url reglamento_url(reglamento, format: :json)
end
