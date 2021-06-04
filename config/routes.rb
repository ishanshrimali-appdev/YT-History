Rails.application.routes.draw do



  resources :trackartistmaps
  resources :artists
  resources :albumartistmaps
  resources :albums
  resources :tracks
  resources :events
  devise_for :users
end
