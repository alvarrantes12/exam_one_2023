Rails.application.routes.draw do
  resources :capture_pokemons
  resources :pokemon_trainers
   scope module: :api do
    resources :capture_pokemons
   end
  root "dashboards#index"
end
