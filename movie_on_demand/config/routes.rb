Rails.application.routes.draw do
  root 'homes#home'

  resources :offers
  resources :vouchers
  resources :seat_prices
  resources :theater_seats
  resources :theater_screens
  resources :theater_staffs
  resources :staff_permissions
  resources :theaters
  resources :users_pages
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :homes
  resources :theatres
end
