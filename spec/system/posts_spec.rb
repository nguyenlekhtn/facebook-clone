require 'rails_helper'

RSpec.describe 'Posts' do
  before do
    driven_by(:rack_test)
  end

  let(:post) { create(:post) }

  xit 'creates a new post' do
    visit posts_path

    click_link 'New post'

    fill_in 'Content', with: 'Capybara post'
    click_button 'Create post'

    expect(page).to have_css('h1', text: 'Posts').and have_text('Capybara post')
  end

  xit 'show a post' do
    visit posts_path

    click_link post.body

    expect(page).to have_css('p', text: quote.body)
  end

  xit 'update a post' do
    visit posts_path

    click_link 'Edit', match: :first
    fill_in 'Content', with: 'Updated post'
    click_button 'Update post'

    expect(page).to have_css('h1', text: 'Posts').and have_text('Updated post')
  end

  xit 'destroy a post' do
    visit posts_path

    click_button 'Delete', match: :first
    expect(page).to have_no_text(post.body)
  end
end
