class GuiasController < InheritedResources::Base
  def permitted_params
    params.permit(:guia => [:nombre, :apellidp, :direccion, :telefono, :email, :dupla_id])
  end
end
