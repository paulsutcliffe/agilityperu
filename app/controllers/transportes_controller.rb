class TransportesController < InheritedResources::Base
  def permitted_params
    params.permit(:transporte => [:nombre, :descripcion, :email, :website])
  end

  def create
    create!( notice: "Transporte creado con éxito."){ transportes_path }
  end

  def update
    update!( notice: "El transporte ha sido editado."){ transportes_path }
  end

  def destroy
    destroy!( notice: "El transporte ha sido eliminado."){ transportes_path }
  end
end
