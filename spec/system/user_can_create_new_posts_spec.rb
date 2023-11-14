require 'rails_helper'

RSpec.describe 'UserCanCreateNewPosts' do
  before do
    driven_by(:rack_test)
  end

  let!(:user) { create(:user) }

  context 'when user create new post' do
    before do
      sign_in(user)
      visit user_path(user)
    end

    it 'will appear in user show page' do
      post_content = 'A new post'

      find(:test_id, 'post-content-field').fill_in(post_content)
      find(:test, 'post-submit-btn').click

      with_in(:test_id, 'posts-list') do
        expect(page).to have_content(post_content)
      end
    end
  end
end
