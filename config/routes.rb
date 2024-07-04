Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check


  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
  root to: 'lists#index'

end
