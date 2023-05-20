json.extract! captured_pokemon, :id, :location, :pokemon, :pokemon_trainer :created_at, :updated_at
json.url captured_pokemon_url(captured_pokemon, format: :json)
