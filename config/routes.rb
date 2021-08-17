Rails.application.routes.draw do
  get 'oficinas/index', to: 'oficinas#index'
  get 'oficinas/crear', to: 'oficinas#crear'
  post 'oficinas/guardar', to: 'oficinas#guardar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
