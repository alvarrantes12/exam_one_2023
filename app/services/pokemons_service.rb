class PokemonsService
  def build_pokemon
    response = HTTParty.get("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0")
    results = response["results"]
    random_pokemon = results[(0..results.length).to_a.sample]
    Pokemon.create(pokemon_name: random_pokemon["name"])
  end
end
