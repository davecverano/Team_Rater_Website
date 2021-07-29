json.extract! student, :id, :fname, :lname, :username, :email, :created_at, :updated_at
json.url student_url(student, format: :json)
