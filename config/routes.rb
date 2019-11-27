Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "home#index"
  get 'home/indexguest'
  get 'home/searchguest'
  get 'trip/new'
  get 'home/searchuser'
  get 'trip/show'
  get 'trip/show'
  get 'home/guideprofile'
  get 'booking/new'
  post '/trip', to: 'trip#create', as: :trips
  post '/booking', to: 'booking#create', as: :bookings
  post '/home', to: 'home#update', as: :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
