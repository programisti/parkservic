class UserMailer < ApplicationMailer
default to: "samsaxuri2015@gmail.com"
default subject: 'parkservice.ge კონტაქტი' 
 
  def send_mail(mail, name, message)
    @mail = mail 
    @name = name
    @message = message
    mail(from: @mail)
  end
end
