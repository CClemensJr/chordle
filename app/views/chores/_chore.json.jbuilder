json.extract! chore, :id, :title, :details, :priority, :time_to_complere, :completed_at, :created_at, :updated_at
json.url chore_url(chore, format: :json)
