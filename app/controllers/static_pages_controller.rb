class StaticPagesController < ApplicationController

  def home
    if current_user
      redirect_to current_user
    end
  end

  def timeline
    @post = Post.new
    @posts = current_user.posts.order('id DESC')
  end
end
