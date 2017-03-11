class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do |error|
    render "error/404"
  end

  def index
    @posts = Post.all.order('updated_at DESC')
  end

  def show
    @post = Post.find_by!(slug: params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:title, :body, :slug)
    end
end
