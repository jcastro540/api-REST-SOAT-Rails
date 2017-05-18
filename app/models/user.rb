class User < ApplicationRecord
  has_secure_token
  has_secure_password
  has_many :polizas
  has_many :pagos

  validates :full_name, presence: true
end
