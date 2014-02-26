class DuplasController < InheritedResources::Base
  before_filter :authenticate_usuario!, only: [:new, :create]

  belongs_to :usuario

  before_filter :setup_usuario

  def permitted_params
    params.permit(:dupla => [:nombre, :pais, :registro_genealogico, :raza, :color, :sexo, :categoria, :grado, :tatuaje_microchip, :especial_g1, :open_ac, :ac_oficial, :fotografia, :fecha_nacimiento, :usuario_id, guias_attributes: [:id, :nombre, :apellido, :direccion, :telefono, :email, :_destroy]])
  end

  def index
    @tags = Dupla.tag_counts_on(:tags)
    if params[:usuario_id]
      @duplas = Dupla.where("usuario_id = ?", @usuario.id).page(params[:page])
    else
      if params[:tag]
        @duplas = Dupla.tagged_with(params[:tag]).page(params[:page])
      else
        @duplas = Dupla.page(params[:page])
      end
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
  def create
    create!( notice: "Dupla creada con éxito."){ usuario_duplas_path }
  end

  def update
    update!( notice: "La dupla ha sido editada."){ usuario_duplas_path }
  end

  def destroy
    destroy!( notice: "La dupla ha sido eliminada."){ usuario_duplas_path(params[:usuario_id]) }
  end
end
