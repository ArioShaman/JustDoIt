class Post < ActiveRecord::Base
	validates :title, :description,:categories_id,:image, :content,presence: {message: "Can not will be empty"}
	validates :title,:description,:content,uniqueness: {message: "Must be unique field"}
	validates :image, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
	}
	#validates_presence_of :title, :description
	
end
