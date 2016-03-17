Rails.application.routes.draw do
  resources :comments
  resources :communities
  resources :promotions
  resources :surveys
  resources :answers
  resources :questions
  resources :payments
  resources :booked_seats
  resources :bookings
  resources :screenings
  resources :movie_suggestions
  resources :languages
  resources :movies
  resources :genres
  root 'homes#home'
  get 'users/sign_in' => redirect('/')
  get 'users/sign_up' => redirect('/')
  post 'users/sign_in' => redirect('/')
  post 'users/sign_up' => redirect('/')
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




  #resources :user_pages
  get 'user_pages/new'
  patch 'user_pages/update'
  # get 'user_pages/edit_user_details'
  # patch 'user_pages/update_user_details'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :homes
  resources :theatres
end
