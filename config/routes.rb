Rails.application.routes.draw do
  resources :tasks do
    member do
      put :change
    end
  end
  resources :tashes
  devise_for :users
  root 'pages#home'
  get 'about' => "pages#about"
  get 'dashboard' => "pages#dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
