Rails.application.routes.draw do

  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
