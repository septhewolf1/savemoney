json.extract! expense, :id, :amount, :indispensable, :description, :date, :created_at, :updated_at
json.url expense_url(expense, format: :json)