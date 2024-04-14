json.extract! article, :id, :name, :description, :price, :created_at, :updated_at

json.brand do
json.extract! article.brand, :id, :name
end

json.stock_entry do
    json.extract! article.stock_entry, :id, :quantity, :location
end

if article.collections.any?
  json.collections do
    json.array! article.collections do |collection|
      json.extract! collection, :id, :name
    end
  end
end

json.url article_url(article, format: :json)