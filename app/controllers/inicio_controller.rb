class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @auspiciadores = Auspiciador.all
    @noticia = Noticia.order("fecha DESC").limit(1)
    @juez = Juez.last
    @ubicacion = Ubicacion.first
  end
end
