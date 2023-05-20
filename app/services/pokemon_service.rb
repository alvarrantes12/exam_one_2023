class PokemonService
    def build_pokemon
      response = HTTParty.get("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0%22")
      results = response["results"]
      random_pokemon = results.sample
      Pokemon.create(name: random_pokemon["name"])
    end
  end