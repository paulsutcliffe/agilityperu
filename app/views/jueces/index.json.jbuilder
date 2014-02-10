json.array!(@jueces) do |juez|
  json.extract! juez, :id, :foto, :nombre, :descripcion
  json.url juez_url(juez, format: :json)
end
