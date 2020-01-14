class FeedbacksController < ApplicationController
  before_action :authenticate_user!

  def new
    @feedback = Feedback.new
    @feedback.username = current_user.full_name
    @feedback.email = current_user.email
  end

  def create
    @feedback = Feedback.new(feedback_params)

    if @feedback.save
      # send_email_to_admin
      redirect_to new_feedback_url, notice: t(".success")
    else
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:username, :email, :message)
  end

  def send_email_to_admin
    ApplicationMailer.with(feedback: @feedback).send_feedback.deliver_later
  end
end
