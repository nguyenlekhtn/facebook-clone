require 'rails_helper'

RSpec.describe 'Sign in' do
  let!(:user) { create(:user,  email: 'myname@example.com') }

  context 'when using an email and password' do
    it 'allows user to sign in' do
      visit root_path

      find(:test_id, 'email-field').fill_in(with: user.email)
      find(:test_id, 'password-field').fill_in(with: user.password)

      find(:test_id, 'submit-btn').click

      expect(page).to have_current_path(root_path)
    end
  end
end
