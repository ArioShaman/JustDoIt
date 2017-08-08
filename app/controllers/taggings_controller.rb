class TaggingsController < ApplicationController
	def index
	    @tags = Tagging.all
	    respond_to do |format|
	      format.html { render :index }
	      format.json { render json: @tags}
	    end
	end

	def create
    	@tagging = Tagging.new(tagging_params)
    	if @tagging.save
    		render json: {tag: @tagging, msg: "Tagging is created"}
		else
			render json: {errors: "errors", msg: "Not created associate"}, status: 422
		end
	end

	def show
	   #respond_to do |format|
	   #  format.html
	   #  format.json {
	   #    render json:  @tagging
	   #  }
	   #end
  	end

  	def tagging_params
		params.require(:tagging).permit(:post_id, :tag_id)
	end
end
