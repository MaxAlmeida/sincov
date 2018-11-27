json.extract! budget_product, :id, :quantity, :integer, :product_id, :budget, :created_at, :updated_at
json.url budget_product_url(budget_product, format: :json)
