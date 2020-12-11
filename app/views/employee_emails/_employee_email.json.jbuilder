json.extract! employee_email, :id, :employee_id, :email, :created_at, :updated_at
json.url employee_email_url(employee_email, format: :json)
