Rails.application.routes.draw do

  resources :tours
  resources :tour_reservations
  resources :group_tour_reservations

  root 'tours#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
