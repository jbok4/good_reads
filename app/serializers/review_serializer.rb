class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :book_id, :created_at
   #has_one :user
end
