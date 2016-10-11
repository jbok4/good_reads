class Book < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

  validates :title, presence: true
  validates_uniqueness_of :title
  validates :author, presence: true
  validates :description, presence: true

  has_attached_file :image, styles: { medium: "300x500#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
