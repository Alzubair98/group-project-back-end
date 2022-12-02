class Reservation < ApplicationRecord
  validates :location, presence: true
  belongs_to :user
end
