class LoadersController < ApplicationController
  helper_method :loader

  def show
    file = loader.elements.last
    @content = CsvParser.new(csv: file).call.take(5)
  end

  def update
    loader.update!(params_loader)
    redirect_to new_file_display_loader_path(loader: loader)
  end

  def new_file_display
    file = loader.elements.last
    @new_file = CsvParser.new(csv: file, chosen_values: clean_chosen_values).call.take(10)
  end

  private

  def loader
    @loader ||= Loader.find params[:id]
  end

  def loaders
    loaders ||= Loader.all
  end

  def params_loader
    params.require(:loader).permit(:chosen_values)
  end

  def clean_chosen_values
    loader.chosen_values.split(',').flatten
  end
end
