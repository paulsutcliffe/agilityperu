class GuiasController < InheritedResources::Base
  before_filter :authenticate_usuario!, only: [:new, :create]

  def permitted_params
    params.permit(:guia => [:nombre, :apellido, :direccion, :telefono, :email, :dupla_id])
  end

  def update
    update!(notice: "El guia ha sido editado."){ usuario_duplas_path }
  end

  def index
    if params[:dupla_id]
      @guias = Guia.where("dupla_id = ?", params[:dupla_id])
    else
      @guias = Guia.all
    end
  end
end
