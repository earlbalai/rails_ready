Rails.application.routes.draw do
  # User Routes
  resources :users, only: %i[create]
  get 'signup', to: 'users#new'
  # Session Routes
  scope :sessions do
    get 'sign_in', to: 'sessions#sign_in'
    post 'sessions', to: 'session#authenticate'
    delete 'sessions', to: 'session#destroy'
  end

  # Defines the root path route ("/")
  root 'static#welcome'
end
