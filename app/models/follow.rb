class Follow < ApplicationRecord
  STATUS_OPTIONS = %w[requesting accepted].freeze

  belongs_to :followed_user, class_name: 'User'
  belongs_to :follower, class_name: 'User'

  validates :status, inclusion: { in: STATUS_OPTIONS }
end
