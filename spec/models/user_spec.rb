require 'rails_helper'

RSpec.describe User do
  it { is_expected.to validate_uniqueness_of(:username) }
end
