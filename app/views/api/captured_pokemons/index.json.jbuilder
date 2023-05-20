json.extract! CapturedPokemon, :id, :first_name, :last_name, :created_at, :updated_at
json.url capturedpokemon_url(CapturedPokemon, format: :json)

