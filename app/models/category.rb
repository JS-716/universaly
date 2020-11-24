class Category < ApplicationRecord
  has_many :words
  has_many :sessions

  validates :name, presence: true
end
