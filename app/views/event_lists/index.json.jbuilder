json.array!(@event_lists) do |event_list|
  json.extract! event_list, :id, :uid
  json.url event_list_url(event_list, format: :json)
end
