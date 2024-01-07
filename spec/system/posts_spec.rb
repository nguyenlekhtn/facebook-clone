require 'rails_helper'

RSpec.describe 'Posts' do
  before do
    driven_by(:rack_test)
  end

  let(:post) { create(:post) }

  it 'creates a new post' do
    visit posts_path

    click_link 'New post'

    fill_in 'Content', with: 'Capybara post'
    click_button 'Create post'

    expect(page).to have_css('h1', text: 'Posts').and have_text('Capybara post')
  end

  it 'show a post' do
    visit posts_path

    click_link post.body

    expect(page).to have_css('p', text: quote.body)
  end

  it 'update a post' do
    visit posts_path

    click_link 'Edit', match: :first
    fill_in 'Content', with: 'Updated post'
    click_button 'Update post'

    expect(page).to have_css('h1', text: 'Posts').and have_text('Updated post')
  end

  it 'destroy a post' do
    visit posts_path

    click_button 'Delete', match: :first
    expect(page).not_to have_text(post.body)
  end
end
