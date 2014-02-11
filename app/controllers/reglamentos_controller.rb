class ReglamentosController < InheritedResources::Base
  before_filter :authenticate_admin!, except:[:index]
  def permitted_params
    params.permit(:reglamento => [:titulo, :contenido])
  end

  def create
    create!( notice: "Reglamento creado con éxito."){ reglamentos_path }
  end

  def update
    update!( notice: "El reglamento ha sido editado."){ reglamentos_path }
  end

  def destroy
    destroy!( notice: "El reglamento ha sido eliminado."){ reglamentos_path }
  end
end
