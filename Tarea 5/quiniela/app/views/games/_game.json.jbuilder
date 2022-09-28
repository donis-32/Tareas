json.extract! game, :id, :team_id, :group_id, :game_result, :created_at, :updated_at
json.url game_url(game, format: :json)
