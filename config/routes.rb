Rails.application.routes.draw do
  resources :equipment, only: %i[index]
end
