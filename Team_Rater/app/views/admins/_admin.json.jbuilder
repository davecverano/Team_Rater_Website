json.extract! admin, :id, :fname, :lname, :username, :email, :created_at, :updated_at
json.url admin_url(admin, format: :json)
