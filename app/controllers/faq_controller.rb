class FaqController < ApplicationController
  def index
    @faq = Faq.order("id ASC")
  end
end
