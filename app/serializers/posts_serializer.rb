class PostsSerializer < ActiveModel::Serializer
	attributes :id, :title, :description, :content
	attributes :image, :categories_id, :art_tags_id, :created_at
	def index
		 PostsController.render(:index,assigns:{posts: object}, layout: false ).squish	
	end
end
