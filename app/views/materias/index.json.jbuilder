json.array!(@materias) do |materia|
  json.extract! materia, :id, :cod, :nombre
  json.url materia_url(materia, format: :json)
end
