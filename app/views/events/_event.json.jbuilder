json.extract! event, :id, :event_id, :topic, :timestamp, :event_type, :value, :created_at, :updated_at
json.url event_url(event, format: :json)
