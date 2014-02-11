class GuiasController < InheritedResources::Base
  before_filter :authenticate_admin!
  def permitted_params
    params.permit(:guia => [:nombre, :apellidp, :direccion, :telefono, :email, :dupla_id])
  end
end
