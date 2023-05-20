Rails.application.routes.draw do
  resources :pokemon_trainers
  resources :pokemon

  scope module: :api do
    resources :captured_pokemons
  end

  root "dashboards#index"
end
