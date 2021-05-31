Rails.application.routes.draw do
  resources :comparendos
  resources :detalles
  resources :prestamos
  resources :usuarios
  resources :libros
  root 'usuarios#index'
  get 'search', to: 'usuarios#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
