class HowController < ApplicationController
  def index
    @how = How.all
  end
end
