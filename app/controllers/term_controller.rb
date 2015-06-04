class TermController < ApplicationController
  def index
    @term = Term.last
  end
end
