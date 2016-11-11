class User < ApplicationRecord
  has_secure_password

  validates :password,
             length: { in: 6..24 },
             allow_nil: true
end
