class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :average_stars, :link, :genre

  has_many :reviews
end
