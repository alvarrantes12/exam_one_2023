class CapturedPokemonsController < ApplicationController
    def index
        @captured_pokemons = CapturedPokemon.includes(:trainer, :pokemon)
        render json: @captured_pokemons.to_json(only: [:id], include: { pokemon: { only: [:name] }, trainer: { only: [:first_name, :last_name] } })
      end
    
      def show
        @captured_pokemon = CapturedPokemon.includes(:trainer, :pokemon).find(params[:id])
        render json: @captured_pokemon.to_json(include: { trainer: { only: [:first_name, :last_name] }, pokemon: { only: [:name] } })
      end
end
