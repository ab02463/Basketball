json.extract! employee, :id, :employee_id, :name, :age, :telephone, :created_at, :updated_at
json.url employee_url(employee, format: :json)
