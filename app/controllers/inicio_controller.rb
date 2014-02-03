class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @auspiciadores = Auspiciador.all
    @noticia = Noticia.last
  end
end
