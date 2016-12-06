class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :book_id, :created_at, :rating
   #has_one :user
end
