Rails.application.routes.draw do
  root 'homes#home'
  get 'users/sign_in' => redirect('/')
  get 'users/sign_up' => redirect('/')
  resources :offers
  resources :vouchers
  resources :seat_prices
  resources :theater_seats
  resources :theater_screens
  resources :theater_staffs
  resources :staff_permissions
  # resources :theaters
  get 'theaters/new'
  post 'theaters/create'

  resources :users_pages
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :homes
  resources :theatres
end
