class Gift < ApplicationRecord
  has_many :user_gifts
  has_many :users, through: :user_gifts
end
