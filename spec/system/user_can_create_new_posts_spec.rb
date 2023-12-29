require 'rails_helper'

RSpec.describe 'UserCanCreateNewPosts' do
  let!(:user) { create(:user) }

  context 'when user create new post' do
    before do
      sign_in(user)
      visit profile_path
    end

    it 'will appear in user show page' do
      post_content = 'A new post'

      # find(:test_id, 'create-post-btn').click

      find(:test_id, 'post-content-field').fill_in(with: post_content)
      find(:test_id, 'post-submit-btn').click

      expect(page).to have_current_path

      within(:test_id, 'posts-list') do
        expect(page).to have_content(post_content)
      end
    end
  end
end
