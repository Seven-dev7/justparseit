class CsvLoadersController < ApplicationController
  helper_method :csv_loader

  def show
    csv_file = csv_loader.csv_elements.last
    @csv_content = CsvParser.new(csv: csv_file).call.take(5)
  end

  def update
    csv_loader.update!(params_csv_loader)
    redirect_to new_csv_display_csv_loader_path(csv_loader: csv_loader)
  end

  def new_csv_display
    csv_file = csv_loader.csv_elements.last
    @new_csv = CsvParser.new(csv: csv_file, chosen_values: clean_chosen_values).call.take(10)
  end

  private

  def csv_loader
    @csv_loader ||= CsvLoader.find params[:id]
  end

  def csv_loaders
    csv_loaders ||= CsvLoader.all
  end

  def params_csv_loader
    params.require(:csv_loader).permit(:chosen_values)
  end

  def clean_chosen_values
    csv_loader.chosen_values.split(',').flatten
  end
end
