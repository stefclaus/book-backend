class Book < ApplicationRecord
  has_many :reviews

  validates :title, presence: true

#write method ot compute the star average
  def update_star(review)
    self.average_stars = self.average_stars + review.star_rating
    self.save
  end

end
