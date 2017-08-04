class TagsController < ApplicationController
	def create
    	@tag = Tag.new tag_params
    	if @tag.save
    		render json: {tag: @tag, msg: "Tag successfully created"}#, redirect_to: "posts_path"}
		else
			render json: {errors: @tag.errors, msg: @tag.errors.full_messages.join(', ')}, status: 422
		end
	end

	def tag_params
		params.require(:tag).permit(:body)
	end
end
