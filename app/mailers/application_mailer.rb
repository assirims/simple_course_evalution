class ApplicationMailer < ActionMailer::Base
  default from: "email@domain.com"
  layout "mailer"
end
