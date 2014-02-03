json.array!(@mensajes) do |mensaje|
  json.extract! mensaje, :id, :nombre, :email, :telefono, :mensaje
  json.url mensaje_url(mensaje, format: :json)
end
