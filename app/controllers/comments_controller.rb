class CommentsController < ApplicationController

  def create
    @comment = current_user.comments.build(white_list_params)
    if @comment.save
      redirect_to timeline_url
    end
  end

  private

  def white_list_params
    params.require(:comment).permit(:body)
  end
end
