class User < ApplicationRecord
  has_many :patterns
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true

  has_secure_password
end
