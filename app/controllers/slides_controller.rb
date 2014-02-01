class SlidesController < InheritedResources::Base
  def permitted_params
    params.permit(:slide => [:imagen, :titulo])
  end

  def create
    create!( notice: "Slide creado con éxito."){ slides_path }
  end

  def update
    update!( notice: "El slide ha sido editado."){ slides_path }
  end

  def destroy
    destroy!( notice: "El slide ha sido eliminado."){ slides_path }
  end

end
