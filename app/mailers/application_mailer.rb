class ApplicationMailer < ActionMailer::Base
  # 誰からメールが来る？
  # ここは偽物を一応登録
  default from: 'aaaa@gmail.com'
  layout 'mailer'
end

