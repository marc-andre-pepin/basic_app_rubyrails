class PostsController < ApplicationController

  skip_before_action  :verify_authenticity_token

  def create
    new_post = Post.create(user_id: params[:user_id], text_content: params[:text_content])

    render json: {post: new_post}
  end

  def retrieve_all
    posts = Post.all
    render json: {posts: posts}
  end

  def update
    post = Post.find(params[:id])

    if post.update(params.require(:post).permit(:text_content, :like_count))
      render json: post
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  def delete
    post = Post.find(params[:id])
    
    if post.destroy
      head :no_content
    else
      head :unprocessable_entity
    end
  end

end
