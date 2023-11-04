Rspec.describe 'Sign in' do
  let!(:user)
  context 'when using an email and password' do
    it 'allows user to sign in' do
      visit root_path

      find(:test_id, 'email-field')
    end
  end
end
