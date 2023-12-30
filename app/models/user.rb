class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :follow_links, dependent: :destroy

  has_many :followings, through: :follow_links
  has_many :followers, through: :follow_links

  validates :username, uniqueness: true
end
