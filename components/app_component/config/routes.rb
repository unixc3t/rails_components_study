AppComponent::Engine.routes.draw do
  resources :games
  resources :teams
  root to: 'welcome#index'
  resources :predictions, only: [:new, :create]
end
