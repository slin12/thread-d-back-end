class User < ApplicationRecord
  has_many :patterns
  has_many :design

  validates :email, uniqueness: true

  has_secure_password
end
