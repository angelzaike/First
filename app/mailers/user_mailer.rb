class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'your-email@example.com',
         subject: "A new contact form message from #{name}")
  end
<<<<<<< HEAD
  
  def welcome(user)
  @appname = "Glimmer Girl Shoppe"
  mail(to: user.email,
       subject: "Welcome to #{@appname}!")
  
   end
=======

  def welcome(user)
    @appname = "Glimmer Girl Shoppe"
    mail(to: user.email, subject: "Welcome to #{@appname}!")
  end
>>>>>>> 6de2a10f2970b8fb92f30f1b7ac40921af1cec87
end
