class Gift < ApplicationRecord

  resourcify :authorities, role_name: 'Authority' 

  has_many :user_gifts
  has_many :users, through: :user_gifts
end
