class BankController < ApplicationController
  protect_from_forgery
  def cartu 
    @mail = "zaali@live.com"
    @car = "car namber" 
    BillingMailer.send_mail(@mail, @car).deliver_later
  end

  def start
    @id = params[:id]
    @car = params[:car]
    
    s = BillingStart.new
    s.pack_id = @id
    s.car = @car
    if s.save
      render :json => { :status => :ok, :car => @car }
    else
      render :json => { :status => :error, :car => @car }
    end
  end 
end
