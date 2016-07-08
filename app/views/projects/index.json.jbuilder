json.array!(@projects) do |project|
  json.extract! project, :id, :team_id, :name, :description, :logo, :git_link, :trello_link, :needed_budget, :got_budget
  json.url project_url(project, format: :json)
end
