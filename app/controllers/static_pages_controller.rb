class StaticPagesController < ApplicationController
  def landing_page
    @loader = Loader.create!
  end
end
