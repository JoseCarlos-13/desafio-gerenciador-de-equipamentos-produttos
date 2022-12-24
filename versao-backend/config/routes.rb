Rails.application.routes.draw do
  resources :equipment, only: %i[index create update destroy]
  resources :locations, only: %i[index create]
end
