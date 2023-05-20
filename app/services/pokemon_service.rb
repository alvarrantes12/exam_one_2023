class PokemonService
  def generate_pokemon
    response = HTTParty.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0')
    results = response["results"]
    random_pokemon_name = results[(0..results.length).to_a.sample]
    Pokemon.create(nombre: random_pokemon_name["name"])
  end
end