class UbicacionController < ApplicationController
  before_filter :authenticate_admin!, except:[:index]

  def index
    @ubicacion = Ubicacion.first
  end

  def editar_ubicacion
    @ubicacion = Ubicacion.first
  end

  def update_ubicacion
    @ubicacion = Ubicacion.first
    @ubicacion.update_attributes(ubicacion_params)
    if @ubicacion.save
      redirect_to ubicacion_path
    end
  end

      #person.update!(person_params)

  private

  def ubicacion_params
    params.require(:ubicacion).permit(:lugar, :direccion, :descripcion, :lat, :lng, :imagen1, :imagen2, :imagen3)
  end

end
