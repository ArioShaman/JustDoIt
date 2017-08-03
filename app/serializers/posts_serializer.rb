class PostsSerializer < ActiveModel::Serializer
	attributes :id, :title, :description, :content, :image, :categories_id, :art_tags_id, :created_at
	def index
		 UsersController.render(:index, assigns:{post: object}, layout: false ).squish	
	end

	
end
