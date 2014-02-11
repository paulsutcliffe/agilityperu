class MensajesController < InheritedResources::Base
  before_filter :authenticate_admin!, except:[:new, :create]
  def permitted_params
    params.permit(:mensaje => [:nombre, :email, :telefono, :mensaje])
  end

  def new
    @mensaje = Mensaje.new
  end

  def create
    create! do |success, failure|
      success.html do
        ContactoMailer.mensaje_recibido(@mensaje).deliver

        flash[:notice] = "Tu mensaje fue enviado con éxito."
        redirect_to new_mensaje_path
      end
      failure.html do
        flash[:notice] = "No ha sido enviado el mensaje."
        render :accion => "new"
      end
    end
  end

  def destroy
    destroy!( notice: "Mensaje borrado con éxito."){ mensajes_path }
  end
end
