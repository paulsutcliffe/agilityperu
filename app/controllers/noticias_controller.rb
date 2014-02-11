class NoticiasController < InheritedResources::Base
  before_filter :authenticate_admin!, only: [:new, :create]
  def permitted_params
    params.permit(:noticia => [:titulo, :foto, :fecha, :contenido])
  end

  def index
    @noticias = Noticia.all
    @noticia = params[:noticia_id] ? Noticia.find(params[:noticia_id]) : Noticia.first
  end

  def show
    @noticia = Noticia.find(params[:id])
    respond_to do |format|
      #format.html
      format.js {}

      format.json { render json: @noticia }
    end
  end

  def create
    create!( notice: "Noticia creada con éxito."){ noticias_path }
  end

  def update
    update!( notice: "La noticia ha sido editada."){ noticias_path }
  end

  def destroy
    destroy!( notice: "La noticia ha sido eliminada."){ noticias_path }
  end


end
