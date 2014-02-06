json.array!(@duplas) do |dupla|
  json.extract! dupla, :id, :nombre, :pais, :registro_genealogico, :raza, :color, :sexo, :categoria, :grado, :tatuaje_microchip, :prueba, :fotografia, :fecha_nacimiento
  json.url dupla_url(dupla, format: :json)
end
