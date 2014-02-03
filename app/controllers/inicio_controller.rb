class InicioController < ApplicationController
  def index
    @slides = Slide.all
    @auspiciadores = Auspiciador.all
  end
end
