class ContactMailer < ApplicationMailer
  def send_email_when_registration_completed(user)
    @user = user
    mail to: user.email, subject: 'お問い合わせありがとうございます'
end
