class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :meals
  has_many :orders
  has_many :reviews, through: :meals

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "default_image.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
