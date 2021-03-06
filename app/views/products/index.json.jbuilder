json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :quantity, :image
  json.url product_url(product, format: :json)
end
