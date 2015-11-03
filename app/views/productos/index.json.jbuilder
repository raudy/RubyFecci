json.array!(@productos) do |producto|
  json.extract! producto, :id, :cod, :nombre, :categoria_id
  json.url producto_url(producto, format: :json)
end
