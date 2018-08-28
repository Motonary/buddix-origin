class User < ApplicationRecord
  has_many :user_gifts
  has_many :gifts, through: :user_gifts
end
