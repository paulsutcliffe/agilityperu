json.array!(@auspiciadores) do |auspiciador|
  json.extract! auspiciador, :id, :imagen, :nombre, :descripcion
  json.url auspiciador_url(auspiciador, format: :json)
end
