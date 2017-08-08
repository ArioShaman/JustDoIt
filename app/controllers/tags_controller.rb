class TagsController < ApplicationController
	#before_action :set_tag, only: [:show, :edit, :update, :destroy]
	#before_action :get_tag, only: [:receive]
	def index
	    @tags = Tag.all
	    respond_to do |format|
	      format.html { render :index }
	      format.json { render json: @tags}
	    end
	end


	def show
		@tag = Tag.find_by(id: params[:id])
  		render json: @tag
	end

	def new
	    respond_to do |format|
	      format.html
	      format.json {
	        render json: {tag: Tag.new}
	      }
	    end
  	end

	def create
    	@tag = Tag.new(tag_params)
    	if @tag.save
    		render json: {tag: @tag, msg: "Tag successfully created"}#, redirect_to: "posts_path"}
		else
			render json: {msg: "not saved"}, status: 422
		end
	end

	def receive
    	@tag = Tag.find_by(body: params[:body])
    	puts @tag.id
  		render json: @tag
  	end

	private
		def set_tag
	    	@tag = Tag.find_by(id: params[:id])
	    end

	    def get_tag
	    	@tag = Tag.find_by(body: params[:body])
	    end
	    
		def tag_params
			params.require(:tag).permit(:body)
			#params.fetch(:tag, {})
		end
end
