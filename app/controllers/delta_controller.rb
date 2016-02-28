class DeltaController < ApplicationController
  def index
    
  end

  def enviar_co
    if correo_entrante[:correo]
      correo = correo_entrante[:correo]
        Contacto.enviar_contacto(correo).deliver_now
    end
  end

    private
    def correo_entrante
      params.require(:correo).permit(:correo)
    end
end
