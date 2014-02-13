Agilityperu::Application.routes.draw do

  resources :jueces

  get 'ubicacion/editar_ubicacion'

  put 'ubicacion/update_ubicacion'

  get '/ubicacion' => 'ubicacion#index'

  get 'tags/:tag', to: 'duplas#index', as: :tag

  resources :costos

  resources :reglamentos

  resources :guias

  resources :duplas

  resources :programas

  resources :organizadores

  resources :contactos

  resources :streamings

  resources :requisitos

  resources :transportes

  resources :hoteles

  resources :visas

  resources :mensajes

  resources :noticias

  resources :auspiciadores

  resources :slides

  devise_for :admins, :path => "cms", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  devise_for :usuarios, :controllers => { :registrations => "usuarios/registrations" }, :path => "usuarios", :path_names => { :sign_in => 'ingresar', :sign_out => 'salir', :password => 'secreto', :confirmation => 'verificacion', :unlock => 'desbloquear', :registration => 'registro', :sign_up => 'inscribirse' }

  resources :usuarios do
    resources :duplas
  end

  root to: 'inicio#index'
  get "inicio/index"

end
