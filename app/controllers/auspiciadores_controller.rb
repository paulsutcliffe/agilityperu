class AuspiciadoresController < InheritedResources::Base
  def permitted_params
    params.permit(:auspiciador => [:imagen, :nombre, :descripcion, :link])
  end

  def create
    create!( notice: "Auspiciador creado con éxito."){ auspiciadores_path }
  end

  def update
    update!( notice: "El auspiciador ha sido editado."){ auspiciadores_path }
  end

  def destroy
    destroy!( notice: "El auspiciador ha sido eliminado."){ auspiciadores_path }
  end
end
