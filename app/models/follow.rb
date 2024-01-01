class Follow < ApplicationRecord
  STATUS_OPTIONS = %w[requesting accepted].freeze

  belongs_to :followed_user
  belongs_to :follower

  validates status, inclusion: { in: STATUS_OPTIONS }
end
