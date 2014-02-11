class ProgramasController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]
  def permitted_params
    params.permit(:programa => [:titulo, :contenido])
  end

  def create
    create!( notice: "Programa creado con éxito."){ programas_path }
  end

  def update
    update!( notice: "El programa ha sido editado."){ programas_path }
  end

  def destroy
    destroy!( notice: "El programa ha sido eliminado."){ programas_path }
  end
end
