require 'rails_helper'

describe "User session flow", type: :feature do
  let!(:user) { FactoryBot.create(:user) }

  context "when the user is not logged in" do
    it "redirects them to the login page from dashboard" do
      visit dashboard_path
      expect(page).to have_current_path(login_path)
    end

    it 'allows the user to login' do
      visit login_path
      fill_in :Email, with: user.email
      fill_in :Password, with: user.password
      click_button "Login"
      expect(page).to have_current_path(dashboard_path)
    end
  end
end
