class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirm.subject
  #
 # def welcome_email(user)
 #  @user=user
  # mail(to:@user.email, subject:"Welcome to TAMU Chinese School Website")
 # end

  def confirm (email,text_content)
    @greeting = "Your message has been sent@"

    mail to: "fuhaoshi@gmail.com"
  end
end
