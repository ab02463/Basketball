class ApplicationMailer < ActionMailer::Base
  default to: "contact@courts.com", from: "contact@courts.com"
  layout 'mailer'
end
