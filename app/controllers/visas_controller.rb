class VisasController < InheritedResources::Base
  before_filter :authenticate_admin!, except:[:index]
  def permitted_params
    params.permit(:visa => [:titulo, :imagen])
  end

  def create
    create!( notice: "Visa creada con éxito."){ visas_path }
  end

  def update
    update!( notice: "La visa ha sido editado."){ visas_path }
  end

  def destroy
    destroy!( notice: "La visa ha sido eliminado."){ visas_path }
  end
end
