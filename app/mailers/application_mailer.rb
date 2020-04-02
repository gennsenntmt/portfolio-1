class ApplicationMailer < ActionMailer::Base
  # 誰からメールが来る？
  default from: 'noreply.taka@gmail.com'
  layout 'mailer'
end

