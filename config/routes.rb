Rails.application.routes.draw do
  resources :emissions
  resources :continents
  get 'continents.json' => 'home#index'
  get 'continents/index' => 'continents#index'
  get 'home/index' => 'home#index'
  root 'continents#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
