json.array!(@categoria) do |categoria|
  json.extract! categoria, :id, :cod, :nombre
  json.url categoria_url(categoria, format: :json)
end
