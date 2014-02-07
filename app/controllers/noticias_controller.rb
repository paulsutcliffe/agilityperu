class NoticiasController < InheritedResources::Base
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
    create!( notice: "Noticia creado con éxito."){ noticias_path }
  end

  def update
    update!( notice: "La noticia ha sido editado."){ noticias_path }
  end

  def destroy
    destroy!( notice: "La noticia ha sido eliminado."){ noticias_path }
  end


end
