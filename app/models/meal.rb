class Meal < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :orders
  has_many :photos
end
