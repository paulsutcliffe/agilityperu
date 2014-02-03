class ContactoMailer < ActionMailer::Base
  default from: "info@kosmyka.com"
  def mensaje_recibido(mensaje)
    @mensaje = mensaje
    mail(:to => "adriel@kosmyka.com", :subject => "Mensajes desde la web", :replay_to => mensaje.email, :from => "adriel@kosmyka.com")
  end


end
