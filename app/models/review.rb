require 'time'

class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :comment, presence: true

  def time_in_words
    self.created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

end
