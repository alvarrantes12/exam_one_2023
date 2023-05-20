Rails.application.routes.draw do

  resources :pokemon_trainers
  scope module: :api do
    resources :captured_pokemons
  end
  root "dashboards#index"
end
