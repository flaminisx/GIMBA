json.array!(@events) do |event|
  json.extract! event, :id, :project_id, :name, :description, :photo, :link, :trello_tag
  json.url event_url(event, format: :json)
end
