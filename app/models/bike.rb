class Bike < ApplicationRecord
  validates :name, :description, :image, :price, presence: true
  validates :name, uniqueness: true, length: { maximum: 20 }
  validates :description, length: { maximum: 200 }
  validates :price, numericality: true

  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
end
