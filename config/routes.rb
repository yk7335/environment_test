Rails.application.routes.draw do
  resources :user_books
  resources :users
  resources :books do
    member do
      get :delete
    end
  end
  root 'user_books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
