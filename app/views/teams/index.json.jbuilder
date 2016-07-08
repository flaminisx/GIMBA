json.array!(@teams) do |team|
  json.extract! team, :id, :speaker_id, :name, :icon, :slack_name
  json.url team_url(team, format: :json)
end
