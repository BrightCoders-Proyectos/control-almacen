require 'rails_helper'

RSpec.describe 'Login', type: :system do
  describe 'login page' do
    it 'shows username and password' do
      visit new_user_session_path
      expect(page).to have_content('Email')
      expect(page).to have_content('Password')
    end
  end
end

feature 'User try to login' do
  scenario 'See the login page and introduce wrong credentials' do
    visit new_user_session_path

    fill_in 'Email', with: 'no-registered-email@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'

    expect(page).to have_content('Invalid Email or password.')
  end

  feature 'User seccesfully login' do
    scenario 'See the home page when the user is login in' do
      user = FactoryBot.create(:user)
      visit new_user_session_path
  
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'

      expect(page).to have_content('Signed in successfully.')
    end
  end
end
