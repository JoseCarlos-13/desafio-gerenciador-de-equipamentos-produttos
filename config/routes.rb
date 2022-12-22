Rails.application.routes.draw do
  resources :equipment, only: %i[index create update destroy]
  resources :location, only: %i[index create]
end
