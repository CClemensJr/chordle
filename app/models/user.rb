class User < ApplicationRecord
  before_save { self.name = name.downcase }
  has_many :chores, dependent: :destroy

  VALID_FORMAT_REGEX = [a-zA-Z\d]

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }, format: { with: VALID_FORMAT_REGEX }
  has_secure_password
  validates :password, length: { within: 6..40 }
end
