Rails.application.routes.draw do
  get 'oficinas/index',         to: 'oficinas#index'
  get 'oficinas/crear',         to: 'oficinas#crear'
  
  post 'oficinas/guardar',      to: 'oficinas#guardar'

  #rutas inquilinos
  get 'inquilinos',             to: 'inquilinos#index'
  get 'inquilinos/crear',       to: 'inquilinos#crear'
  get 'inquilinos/:id',         to: 'inquilinos#mostrar'
  get 'inquilinos/:id/editar',  to: 'inquilinos#editar'

  post 'inquilinos/crear',      to: 'inquilinos#guardar'
  put 'inquilinos/:id',         to: 'inquilinos#actualizar'
  patch 'inquilinos/:id',       to: 'inquilinos#actualizar'
  delete 'inquilinos/:id',      to: 'inquilinos#eliminar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
