Rails.application.routes.draw do
  resources :bikes, only: [:destroy, :new, :create, :index, :show]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :reservations
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  post :destroy, to: 'reservations#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end
