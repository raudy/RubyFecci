json.array!(@cfacturas) do |cfactura|
  json.extract! cfactura, :id, :num, :fecha, :mneto, :mbruto, :cliente_id
  json.url cfactura_url(cfactura, format: :json)
end
