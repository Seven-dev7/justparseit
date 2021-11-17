class ElementsController < ApplicationController
  def create
    loader = Loader.find(params[:loader_id].to_i)
    loader.elements.create(elements_params)
    redirect_to loader_path(loader)
  end

  def elements_params
    params.require(:element).permit(:file)
  end
end
