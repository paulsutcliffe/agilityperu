json.array!(@guias) do |guia|
  json.extract! guia, :id, :nombre, :apellido, :direccion, :telefeno, :email
  json.url guia_url(guia, format: :json)
end
