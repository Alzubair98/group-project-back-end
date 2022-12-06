class Reservation < ApplicationRecord
  validates :location, presence: true
  belongs_to :user
  belongs_to :bike
end
