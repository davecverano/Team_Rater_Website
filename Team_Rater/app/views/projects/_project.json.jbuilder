json.extract! project, :id, :name, :description, :assigned, :due, :pid, :class, :class_id, :created_at, :updated_at
json.url project_url(project, format: :json)
