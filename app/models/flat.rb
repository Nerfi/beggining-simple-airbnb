class Flat < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :price_per_night, presence: true , numericality: true
  validates :number_of_guests, presence: true, numericality: true
end
