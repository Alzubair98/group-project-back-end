class Bike < ApplicationRecord
    validates :name, :description, :image, :price, presence: true
    validates :name,  uniqueness: true, length: { maximum: 20 }
    validates :image, length: {minimum: 1}
    validates :description, length: { maximum:100 } 
    validates :price, numericality: true
end
