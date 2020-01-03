Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tweets#top'
  get 'tweets/top/' =>'twseets#search'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end
