class HomeController < ApplicationController
  def index
    @slider = Slider.all
  end
end
