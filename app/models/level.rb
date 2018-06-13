class Level < ApplicationRecord
  has_many :level_users, dependent: :destroy
  has_many :users, through: :level_users
end
