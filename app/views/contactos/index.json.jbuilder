json.array!(@contactos) do |contacto|
  json.extract! contacto, :id, :titulo, :contenido, :email, :website
  json.url contacto_url(contacto, format: :json)
end
