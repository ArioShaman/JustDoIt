class TaggingsController < ApplicationController
	def index
	    @tags = Tagging.all
	    respond_to do |format|
	      format.html { render :index }
	      format.json { render json: @tags}
	    end
	end

	def create
    	@tagging = Tagging.new tagging_params
    	if @tag.save
    		render json: {tag: @tagging}
		else
			render json: {errors: @tagging.errors, msg: @tagging.errors.full_messages.join(', ')}, status: 422
		end
	end

	def show
	    respond_to do |format|
	      format.html
	      format.json {
	        render json:  @tagging
	      }
	    end
  	end

  	def tagging_params
		params.require(:tagging).permit(:post_id, :tag_id)
	end
end
