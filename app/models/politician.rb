class Politician < ApplicationRecord
  has_many :bookings
  has_many :reviews
  has_many :users, through: :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_rating
    ratings = reviews.map(&:rating)
    ratings.sum.fdiv(ratings.count)
  end
end
