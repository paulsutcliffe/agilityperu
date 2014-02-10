class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @auspiciadores = Auspiciador.all
    @noticia = Noticia.last
    @juez = Juez.last
  end
end
