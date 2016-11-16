class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.build(white_list_params)
    @comment.save!
    redirect_to timeline_url
  end

  private

  def white_list_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type)
  end
end
