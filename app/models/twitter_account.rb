require "x"
class TwitterAccount < ApplicationRecord
  has_many :tweets, dependent: :destroy
  belongs_to :user

  validates :username, uniqueness: false

  def client 
    x_credentials = {
      api_key: "7jIfTftLOVyiRJVh948yHyxtI",
      api_key_secret: "c6TveA7m3zuanpuvhVoIxTCqTxGTNSXG8zJjQU6MhfFEiCiPpj",
      access_token: token,
      access_token_secret: secret,
    }
    X::Client.new(**x_credentials)
  end
end
