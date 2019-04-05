json.extract! project, :id, :title, :location, :client, :rating, :created_at, :updated_at
json.url project_url(project, format: :json)
