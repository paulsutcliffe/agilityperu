class HotelesController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]
  def permitted_params
    params.permit(:hotel => [:nombre, :descripcion, :email, :website])
  end

  def create
    create!( notice: "Hotel creado con éxito."){ hoteles_path }
  end

  def update
    update!( notice: "El hotel ha sido editado."){ hoteles_path }
  end

  def destroy
    destroy!( notice: "El hotel ha sido eliminado."){ hoteles_path }
  end
end
