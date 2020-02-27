class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts

  validates :name, presence: true
  validates :user_name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
end