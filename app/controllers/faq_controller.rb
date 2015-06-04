class FaqController < ApplicationController
  def index
    @faq = Faq.all
  end
end
