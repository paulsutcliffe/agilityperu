json.array!(@noticias) do |noticia|
  json.extract! noticia, :id, :titulo, :foto, :fecha, :contenido
  json.url noticia_url(noticia, format: :json)
end
