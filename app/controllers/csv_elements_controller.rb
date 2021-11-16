class CsvElementsController < ApplicationController
  def create
    csv_loader = CsvLoader.find(params[:csv_loader_id].to_i)
    csv_loader.csv_elements.create(csv_elements_params)
    redirect_to csv_loader_path(csv_loader)
  end

  def csv_elements_params
    params.require(:csv_element).permit(:csv_file)
  end
end
