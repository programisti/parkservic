class ContactController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:send_mail]
  def index
    @contact = Contact.last
  end

  def send_mail 
    @mail = params[:mail] 
    @name = params[:name]
    @message = params[:message]
    UserMailer.send_mail(@mail, @name, @message).deliver_later
    
    flash[:notice] = "შეტყობინება წარმატებით გაიგზავნა."
    render "index"
  end
end
