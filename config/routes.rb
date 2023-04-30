Rails.application.routes.draw do
  # User Routes
  resources :users, only: %i[create show]
  get 'sign_up', to: 'users#sign_up', as: 'sign_up'
  # Session Routes
  scope :sessions, path: '/' do
    get 'sign_in', to: 'sessions#sign_in'
    post 'sessions', to: 'sessions#authenticate'
    delete 'sessions', to: 'sessions#destroy'
  end

  # Defines the root path route ("/")
  root 'static#welcome'
end
