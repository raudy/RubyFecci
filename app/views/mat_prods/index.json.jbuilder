json.array!(@mat_prods) do |mat_prod|
  json.extract! mat_prod, :id, :cantidad, :Materia_id, :Produto_id
  json.url mat_prod_url(mat_prod, format: :json)
end
