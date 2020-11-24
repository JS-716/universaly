class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sessions
  has_many :words
  has_many :categories, through: :words

  has_one_attached :photo
  
  validates :first_name, :last_name, :mother_tongue, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$/, message: "Adresse e-mail non valide", multiline: true }
  validates :password, presence: true, length: { in: 6..8 }
end
