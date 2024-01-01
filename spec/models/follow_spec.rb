require 'rails_helper'

RSpec.describe Follow do
  it { is_expected.to validate_inclusion_of(:status).in_array(%w[requesting accepted]) }
end
