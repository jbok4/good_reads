class UserReviewSerializer < ActiveModel::Serializer
  attributes :comment,  :created_at
  # attributes :id, :comment, :book_id, :rating, :user_id, :created_at
  #problem is i am not loading this up with the book.title 
  #in the json info
  #which is a has_many through issue. 
end
