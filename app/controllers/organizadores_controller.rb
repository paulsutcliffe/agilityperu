class OrganizadoresController < InheritedResources::Base
  def permitted_params
    params.permit(:organizador => [:titulo, :contenido])
  end

  def create
    create!( notice: "Organizador creado con éxito."){ organizadores_path }
  end

  def update
    update!( notice: "El organizador ha sido editado."){ organizadores_path }
  end

  def destroy
    destroy!( notice: "El organizador ha sido eliminado."){ organizadores_path }
  end
end
