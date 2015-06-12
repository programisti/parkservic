class BillingMailer < ApplicationMailer
  default to: "zaali@live.com"
  default subject: "პაკეტის შეძენა" 

  def send_mail(mail, car)
    @mail = mail 
    @car = car
    mail(from: @mail)
  end

end
