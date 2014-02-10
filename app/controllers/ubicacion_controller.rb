class UbicacionController < ApplicationController
  def permitted_params
    params.permit(:transporte => [:lugar, :direccion, :descripcion, :lat, :lng, :imagen1, :imagen2, :imagen3])
  end

  def index
    @ubicacion = Ubicacion.first
  end

  def editar_ubicacion
    @ubicacion = Ubicacion.first
  end

  def update_ubicacion
    @ubicacion = Ubicacion.first.update_atributes(params[@ubicacion])
  end
end
