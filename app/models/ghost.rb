class Ghost < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :age, presence: true
  validates :rate, presence: true
  validates :location, presence: true
end
