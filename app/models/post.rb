class Post < ApplicationRecord
		# validates :title, :presence => true
		has_many :comments, :dependent => :destroy
		mount_uploader :image, ImageUploader
		has_many :likes, dependent: :destroy
		belongs_to :user
		belongs_to :category
end
