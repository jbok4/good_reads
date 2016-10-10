class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :comment, presence: true

end
