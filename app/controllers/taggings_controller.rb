class TaggingsController < ApplicationController
	def index
	    @tags = Tag.all
	    respond_to do |format|
	      format.html { render :index }
	      format.json { render json: @tags}
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
end
