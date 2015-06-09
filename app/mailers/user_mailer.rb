class UserMailer < ApplicationMailer
default to: "info@parkservice.ge"
default subject: 'parkservice.ge კონტაქტი' 
 
  def send_mail(mail, name, message)
    @mail = mail 
    @name = name
    @message = message
    mail(from: @mail)
  end
end
