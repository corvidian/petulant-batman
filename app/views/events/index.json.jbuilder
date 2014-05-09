json.array!(@events) do |event|
  json.extract! event, :id, :start, :length, :name, :place, :description, :event_list_id
  json.url event_url(event, format: :json)
end
