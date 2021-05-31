class Ghost < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :age, presence: true
  validates :rate, presence: true
  validates :location, presence: true
end
