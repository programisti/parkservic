class HowController < ApplicationController
  def index
    @how = How.order("id DESC").all
  end
end
