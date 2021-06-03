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
  def average_rating
    if reviews.length > 0
    reviews.map { |e| e.rating }.sum / reviews.length.to_i
    end
  end
end
