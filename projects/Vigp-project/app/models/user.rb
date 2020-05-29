class User < ApplicationRecord
  has_many :events
  has_many :participants
  has_many :participations, through: :participants, source: :event
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end