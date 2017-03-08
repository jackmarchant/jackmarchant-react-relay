class PostsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do |error|
    render :text => 'not found'
  end

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def show
    # post_title = params[:id].gsub('-', ' ')
    @post = Post.find(params[:id])
    @posts = Post.order('created_at DESC').limit(4).offset(1)
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
