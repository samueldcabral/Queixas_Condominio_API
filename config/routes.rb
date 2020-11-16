Rails.application.routes.draw do
  devise_for :usuarios
  resources :comentarios
  resources :queixas
  resources :statuses
  resources :arquivos
  resources :usuarios
  resources :perfils

  devise_scope :usuario do
    post "sign_up", to: "registrations#create"
    post "sign_in", to: "sessions#create"
  end

  get "queixas/find_by_criado_por/:criado_por", to: "queixas#find_by_criado_por"
  get "queixas/find_by_criado_por_status_id/:criado_por/:status_id", to: "queixas#find_by_criado_por_status_id"
  get "queixas/find_by_status_id/:status_id", to: "queixas#find_by_status_id"
  get "queixas/find_by_privacidade/:privacidade", to: "queixas#find_by_privacidade"
  get "queixas/find_by_tipo/:tipo", to: "queixas#find_by_tipo"

  get "comentarios/find_by_queixa_id/:queixa_id", to: "comentarios#find_by_queixa_id"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
