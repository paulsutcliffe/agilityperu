class TransportesController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]
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
