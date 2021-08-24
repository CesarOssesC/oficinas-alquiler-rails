Rails.application.routes.draw do
  get 'oficinas/index',         to: 'oficinas#index',       as: 'oficinas'
  get 'oficinas/crear',         to: 'oficinas#crear'
  
  post 'oficinas/guardar',      to: 'oficinas#guardar'

  #rutas inquilinos
  get 'inquilinos',             to: 'inquilinos#index',     as: 'inquilinos'
  get 'inquilinos/crear',       to: 'inquilinos#crear',     as: 'nuevo_inquilino'
  get 'inquilinos/:id',         to: 'inquilinos#mostrar',   as: 'inquilino'
  get 'inquilinos/:id/editar',  to: 'inquilinos#editar',    as: 'editar_inquilino'

  post 'inquilinos',            to: 'inquilinos#guardar'
  put 'inquilinos/:id',         to: 'inquilinos#actualizar'
  patch 'inquilinos/:id',       to: 'inquilinos#actualizar'
  delete 'inquilinos/:id',      to: 'inquilinos#eliminar'  

  #para sesiones
  root                          to: 'sesiones#login',       as: 'login'
  post 'sesiones',              to: 'sesiones#iniciar'
  delete 'sesiones',            to: 'sesiones#cerrar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
