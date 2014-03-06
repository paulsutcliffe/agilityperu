class ContactoMailer < ActionMailer::Base
  default from: "web@kosmyka.com"
  def mensaje_recibido(mensaje)
    @mensaje = mensaje
    mail(:to => "info@agilityperu2014.com", :subject => "Mensajes desde la web", :replay_to => mensaje.email, :from => "info@agilityperu2014.com")
  end
end
