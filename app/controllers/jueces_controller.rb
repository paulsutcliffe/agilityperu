class JuecesController < InheritedResources::Base
  def permitted_params
    params.permit(:juez => [:foto, :nombre, :descripcion])
  end

  def create
    create!( notice: "Juez creado con éxito."){ jueces_path }
  end

  def update
    update!( notice: "El juez ha sido editado."){ jueces_path }
  end

  def destroy
    destroy!( notice: "El juez ha sido eliminado."){ jueces_path }
  end
end
