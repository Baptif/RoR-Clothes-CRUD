json.extract! stock_entry, :id, :quantity, :location, :created_at, :updated_at
json.url stock_entry_url(stock_entry, format: :json)
