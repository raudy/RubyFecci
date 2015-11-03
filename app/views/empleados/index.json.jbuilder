json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :user, :pass
  json.url empleado_url(empleado, format: :json)
end
