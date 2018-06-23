json.extract! alum, :id, :firstname, :lastname, :bio, :hometown, :headshot_url, :created_at, :updated_at
json.url alum_url(alum, format: :json)
