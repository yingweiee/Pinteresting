class Pin < ActiveRecord::Base
	belongs_to :user
	acts_as_votable

	has_attached_file :image, styles: { medium: "300x300>", thumb: "300x225#" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]


  validates :image, presence: true
  validates :description, presence: true
end
