require 'spec_helper'

feature "signing in." do
  scenario 'Signing in via form' do
    user = FactoryGirl.create(:user)
    
    visit '/'
    click_link 'Sign in'
    fill_in 'Username', with: user.username
    fill_in 'Password', with: user.password
    click_button "Sign in"
    
    expect(page).to have _constant("Signed in successfully.")
  end
end