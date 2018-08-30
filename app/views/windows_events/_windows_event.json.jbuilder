json.extract! windows_event, :id, :event_id, :client_id, :time, :samaccountname, :created_at, :updated_at
json.url windows_event_url(windows_event, format: :json)
