class ContactosController < InheritedResources::Base
  def permitted_params
    params.permit(:contacto => [:titulo, :contenido, :email, :website])
  end

  def create
    create!( notice: "Contacto creado con éxito."){ slides_path }
  end

  def update
    update!( notice: "El contacto ha sido editado."){ slides_path }
  end

  def destroy
    destroy!( notice: "El contacto ha sido eliminado."){ slides_path }
  end
end
