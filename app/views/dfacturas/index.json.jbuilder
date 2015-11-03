json.array!(@dfacturas) do |dfactura|
  json.extract! dfactura, :id, :cantidad, :hh, :Producto_id, :cfactura_id
  json.url dfactura_url(dfactura, format: :json)
end
