class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :table

  validates :customer, presence: true
  # validates :date, presence: true
end
