Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'cocktails/index'
  get 'cocktails/new'
  get 'cocktails/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  get 'search', to: 'cocktails#search'
  post 'search', to: 'cocktails#search'
  resources :cocktails, only: %i[index new create show] do
    resources :doses, only: %i[new create]
  end

  resources :doses, only: :destroy
end
