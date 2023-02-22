Rails.application.routes.draw do
  get 'reviews/new'

  root 'restaurants#index'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
