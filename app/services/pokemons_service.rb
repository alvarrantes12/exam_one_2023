class PokemonsService
    def build_pokemon
    response = HTTParty.get("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0")
    binding.pry
    end
end