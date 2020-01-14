class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@feedbacks-staging.herokuapp.com"
  layout "mailer"

  def send_feedback
    @feedback = params[:feedback]

    mail to: ENV['ADMIN_EMAIL']
  end
end
