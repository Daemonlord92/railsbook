json.extract! status_update, :id, :status_post, :created_at, :updated_at
json.url status_update_url(status_update, format: :json)
