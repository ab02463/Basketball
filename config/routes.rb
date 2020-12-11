Rails.application.routes.draw do
  resources :employee_emails
  resources :reviews
  resources :orders
  resources :courts
  resources :employees
  devise_for :users
  root 'home#home'
  get 'contact',to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
  post '/make_order' => 'orders#make_order'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
