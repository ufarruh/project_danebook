class PostsController < ApplicationController

  def create
    @post = current_user.posts.build(white_list_params)
    if @post.save
      redirect_to timeline_url
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to timeline_url
  end


  private

  def white_list_params
    params.require(:post).permit(:body)
  end
end
