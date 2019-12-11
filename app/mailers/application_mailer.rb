class ApplicationMailer < ActionMailer::Base
  default to: "info@aworkday.com", from: 'me@example.com'
  layout 'mailer'
end
