class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]
  def permitted_params
    params.permit(:contacto => [:titulo, :contenido, :email, :website])
  end

  def create
    create!( notice: "Contacto creado con éxito."){ contactos_path }
  end

  def update
    update!( notice: "El contacto ha sido editado."){ contactos_path }
  end

  def destroy
    destroy!( notice: "El contacto ha sido eliminado."){ contactos_path }
  end
end
