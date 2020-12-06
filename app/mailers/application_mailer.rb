class ApplicationMailer < ActionMailer::Base
  default from: 'lilygee94@icloud.com'
  layout 'mailer'

  def formatDate(month, day, year)
    months = ["January", "February", "March", "April", "June", "July", "August", "September", "October", "November", "December"]
    "Your appointment is set for #{months[month]} #{day}, #{year}"
  end
end
