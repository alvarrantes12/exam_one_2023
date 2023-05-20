Rails.application.routes.draw do
  resources :pokemon_trainers
  resources :captured_pokemons, only: [:index, :show]
  root "dashboards#index"
end
