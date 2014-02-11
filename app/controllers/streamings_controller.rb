class StreamingsController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:index]
  def permitted_params
    params.permit(:streaming => [:codigo_embed])
  end

  def create
    create!( notice: "Señal en vivo creada con éxito."){ streamings_path }
  end

  def update
    update!( notice: "La señal en vivo ha sido editada."){ streamings_path }
  end

  def destroy
    destroy!( notice: "La señal en vivo ha sido eliminada."){ streamings_path }
  end
end
