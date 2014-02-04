json.array!(@hoteles) do |hotel|
  json.extract! hotel, :id, :nombre, :descripcion, :email, :website
  json.url hotel_url(hotel, format: :json)
end
