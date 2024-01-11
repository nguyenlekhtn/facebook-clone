require 'rails_helper'

RSpec.describe 'Follows', type: :system do
  let(:requester) { create(:user, username: 'Requester') }
  let(:receiver) { create(:user, username: 'Followed user') }

  before do
    driven_by(:rack_test)

    sign_in(requester)
    visit users_path(receiver)
    click_on 'Follow'
    sign_out

    sign_in(receiver)
  end

  xcontext 'when received follow request from a user' do
    it 'displays the request user\'s name in the user\'s follow request page' do
      visit follow_request_path(receiver)

      expect(page).to have_text(receiver.email).and have_text('Accept')
    end
  end
end
