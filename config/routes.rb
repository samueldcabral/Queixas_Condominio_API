Rails.application.routes.draw do
  resources :comentarios
  resources :queixas
  resources :statuses
  resources :arquivos
  resources :usuarios
  resources :perfils
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
