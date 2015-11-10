json.array!(@materia) do |materium|
  json.extract! materium, :id, :cod, :nombre
  json.url materium_url(materium, format: :json)
end
