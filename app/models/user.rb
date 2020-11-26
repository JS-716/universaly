class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include Streakable

  has_many :exercises
  has_many :words
  has_many :categories, through: :words

  has_one_attached :photo

  validates :first_name, :last_name, :mother_tongue, presence: true
end
