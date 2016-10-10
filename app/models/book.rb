class Book < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  validates_uniqueness_of :title
  validates :author, :description, :pages, :published

  has_attached_file :image, styles: { medium: "300x500#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
