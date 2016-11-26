Rails.application.routes.draw do
  get 'maestros/vincular_con_salon/:maestro_id', to: 'maestros#vincular_salon', as: 'vincular_con_salon'
 
  resources :maestros
  resources :alumnos
  resources :salons
end  