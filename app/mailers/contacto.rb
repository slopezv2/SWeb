class Contacto < ApplicationMailer
  def enviar_contacto(correo)
    @correo = correo
    mail( to: ENV["GMAIL_USERNAME"], subject: 'Contacto por pagina' )
  end
end
