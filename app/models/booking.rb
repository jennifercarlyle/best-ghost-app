class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ghost
  has_one :review
end
