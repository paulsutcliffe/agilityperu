class ContactosController < InheritedResources::Base
  def permitted_params
    params.permit(:contacto => [:titulo, :contenido, :email, :website])
  end

  def create
    create!( notice: "Contacto creado con éxito."){ organizadores_path }
  end

  def update
    update!( notice: "El contacto ha sido editado."){ organizadores_path }
  end

  def destroy
    destroy!( notice: "El contacto ha sido eliminado."){ organizadores_path }
  end
end
