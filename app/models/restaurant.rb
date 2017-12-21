class Restaurant < ApplicationRecord
  has_many :tables
  has_many :reservations

  validates :name, uniqueness: true, presence: true
end
