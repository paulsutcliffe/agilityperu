class DuplasController < InheritedResources::Base
  def permitted_params
    params.permit(:dupla => [:nombre, :pais, :registro_genealogico, :raza, :color, :sexo, :categoria, :grado, :tatuaje_microchip, :prueba, :fotografia, :fecha_nacimiento, :usuario_id])
  end
end
