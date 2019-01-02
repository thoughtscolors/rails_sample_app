class User < ApplicationRecord
  before_save { self.email = email.downcase }
  # can also be written as
  # before_save { self.email = self.email.downcase } <- right hand side self is optional.
  # can also be written as
  # before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
end
