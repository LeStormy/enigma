class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]
  validates :username, uniqueness: true

  has_many :level_users, dependent: :destroy
  has_many :levels, through: :level_users
  def email_required?
    false
  end
end
