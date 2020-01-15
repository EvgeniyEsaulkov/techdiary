require "rails_helper"

feature "Send feedback" do
  let(:feedback) { build :feedback }

  feature "User logged in" do
    include_context "when current user signed in"

    background do
      visit new_feedback_path
    end

    scenario "Fields are filled with user data" do
      expect(page).to have_field("Username", with: current_user.full_name)
      expect(page).to have_field("Email", with: current_user.email)
    end

    scenario "User sends feedback" do
      fill_in "Message", with: feedback.message
      expect { click_button "Send" }.to change(Feedback, :count).by(1)

      expect(page).to have_content("Your message was successfully delivered. Thank you!")

      open_email(ENV["ADMIN_EMAIL"])

      expect(current_email).to have_subject("New feedback")
      expect(current_email).to have_body_text(feedback.message)
    end
  end
end
