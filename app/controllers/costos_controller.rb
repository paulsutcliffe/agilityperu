class CostosController < InheritedResources::Base
  def permitted_params
    params.permit(:costo => [:titulo, :contenido])
  end

  def create
    create!( notice: "Costo creado con éxito."){ costos_path }
  end

  def update
    update!( notice: "El costo ha sido editado."){ costos_path }
  end

  def destroy
    destroy!( notice: "El costo ha sido eliminado."){ costos_path }
  end
end
