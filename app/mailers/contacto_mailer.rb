class ContactoMailer < ActionMailer::Base
  default from: "info@kosmyka.com"
  def mensaje_recibido(mensaje)
    @mensaje = mensaje
    mail(:to => "web@agilityperu2014.com", :subject => "Mensajes desde la web", :replay_to => mensaje.email, :from => "info@agilityperu2014.com")
  end
end
