class DuplasController < InheritedResources::Base
  before_filter :authenticate_usuario!, only: [:new, :create]

  belongs_to :usuario

  before_filter :setup_usuario
  
  def permitted_params
    params.permit(:dupla => [:nombre, :pais, :registro_genealogico, :raza, :color, :sexo, :categoria, :grado, :tatuaje_microchip, :prueba, :fotografia, :fecha_nacimiento, :usuario_id, guias_attributes: [:nombre, :apellido, :direccion, :telefono, :email]])
  end

  def index
    if params[:usuario_id]
      @duplas = Dupla.where("usuario_id = ?", @usuario.id)
    else
      @duplas = Dupla.all
    end
    respond_to do |format|
      format.html
      format.js {}
      format.json { render json: @duplas }
    end
  end
  
  def setup_usuario
    @usuario = Usuario.find(current_usuario.id) if current_usuario
  end

  def mis_duplas
    @duplas = Dupla.where("usuario_id = ?", @usuario.id)
    respond_to do |format|
      format.html
      format.js {}
      format.json { render json: @duplas }
    end
  end

end
