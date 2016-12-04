class UserReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment
  #problem is i am not loading this up with the book.title 
  #in the json info
  #which is a has_many through issue. 
end
