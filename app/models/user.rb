class User < ApplicationRecord

  resourcify :authorities, role_name: 'Authority'

  has_many :user_gifts
  has_many :gifts, through: :user_gifts
end
