class BookReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment, :user_id, :created_at
end
