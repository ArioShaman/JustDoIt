
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]


  def index
    #@posts = Post.all.paginate(:page => params[:page], :per_page => 4) 
    @posts = Post.all
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @posts}#,each_serializer: PostsSerializer}
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json {
        render json: @post
      }
    end
  end

  def new
    respond_to do |format|
      format.html
      format.json {
        render json: Post.new
      }
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.json {
        render json: @post
      }
    end
  end

  def create
    @post = Post.new post_params
    if @post.save
      render json: {post: @post, msg: "Post successfully created", redirect_to: "posts_path"}
    else
      render json: {errors: @post.errors, msg: @post.errors.full_messages.join(', ')}, status: 422
    end
  end

  def update
    if @post.update(post_params)
      render json: {post: @post, msg: "Post successfully updated", redirect_to: "posts_path"}
    else
      render json: {errors: @post.errors, msg: @post.errors.full_messages.join(', ')}, status: 422
    end
  end

  def destroy
    @post.destroy
    render json: {msg: "Post successfully deleted", redirect_to: "posts_path"}
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :description, :content, :categories_id, :image)
    end
end
