class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :star_rating, :datetime, :likes, :book_id
end
