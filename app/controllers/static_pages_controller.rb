class StaticPagesController < ApplicationController
  def landing_page
    @csv_loader = CsvLoader.create!
  end
end
