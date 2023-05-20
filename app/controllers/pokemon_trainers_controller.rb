class PokemonTrainersController < ApplicationController
    before_action :set_comedian, only: %i[ show edit update destroy ]
  
    def index
      @pokemon_trainers = PokemonTrainer.all
    end
  
    def show; end
  
    def new
      @pokemon_trainer = PokemonTrainer.new
    end
  
    def edit; end
  
    def create
      @pokemon_trainer  = Comedian.new(comedian_params)
  
      if @pokemon_trainer .save
        PokemonsService.new.build_pokemon
        redirect_to pokemon_trainer_url(@pokemon_trainer ), notice: t('application.created')
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def update
      if @pokemon_trainer .update(comedian_params)
        redirect_to pokemon_trainer_url(@pokemon_trainer ), notice: t('application.updated')
      else
        render :edit, status: :unprocessable_entity 
      end
    end
  
    def destroy
      @pokemon_trainer .destroy
  
      redirect_to pokemon_trainers_url, notice: t('application.deleted')
    end

    private

  def set_pokemon_trainer
    @pokemon_trainer = PokemonTrainer.find(params[:id])
  end

  def pokemon_trainer_params
    params.require(:pokemon_trainer).permit(:first_name, :last_name, :region, :id_number,)
  end
    
  end
