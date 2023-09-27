class User < ApplicationRecord
  has_many :twitter_accounts, dependent: :destroy
  has_many :tweets, dependent: :destroy
  has_secure_password
  validates :email, presence: true, format: { with: /\A\S+@.+\.\S+\z/, message: "must be a valid email" }
end
