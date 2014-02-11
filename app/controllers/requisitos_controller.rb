class RequisitosController < InheritedResources::Base
  before_filter :authenticate_admin!, except:[:index]
  def permitted_params
    params.permit(:requisito => [:pais, :contenido])
  end

  def create
    create!( notice: "Requisito creado con éxito."){ requisitos_path }
  end

  def update
    update!( notice: "El requisito ha sido editado."){ requisitos_path }
  end

  def destroy
    destroy!( notice: "El requisito ha sido eliminado."){ requisitos_path }
  end
end
