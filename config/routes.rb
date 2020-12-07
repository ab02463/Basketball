Rails.application.routes.draw do
  resources :courts
  resources :orders
  resources :employees
  devise_for :users
  root 'home#home'
  get 'contact',to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
  post '/new_order' => 'application#new_order'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
