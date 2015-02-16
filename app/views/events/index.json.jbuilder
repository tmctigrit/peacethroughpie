json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :time, :description
  json.url event_url(event, format: :json)
end
