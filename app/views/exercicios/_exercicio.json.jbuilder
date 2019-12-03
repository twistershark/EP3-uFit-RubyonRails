json.extract! exercicio, :id, :name, :url, :categoria, :created_at, :updated_at
json.url exercicio_url(exercicio, format: :json)
