class User < ApplicationRecord
  has_many :patterns

  validates :email, uniqueness: true

  has_secure_password
end
