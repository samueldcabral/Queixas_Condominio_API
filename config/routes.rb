Rails.application.routes.draw do
  resources :comentarios
  resources :queixas
  resources :statuses
  resources :arquivos
  resources :usuarios
  resources :perfils

  get "queixas/find_by_criado_por/:criado_por", to: "queixas#find_by_criado_por"
  get "queixas/find_by_criado_por_status_id/:criado_por/:status_id", to: "queixas#find_by_criado_por_status_id"
  get "queixas/find_by_status_id/:status_id", to: "queixas#find_by_status_id"
  get "queixas/find_by_privacidade/:privacidade", to: "queixas#find_by_privacidade"
  get "queixas/find_by_tipo/:tipo", to: "queixas#find_by_tipo"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
