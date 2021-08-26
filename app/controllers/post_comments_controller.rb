class PostCommentsController < ApplicationController
  
  def create
    sleep = Sleep.find(params[:sleep_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.sleep_id = sleep.id
    comment.save
    redirect_to sleep_path(sleep)
  end

  def destroy
    PostComment.find_by(id: params[:id], sleep_id: params[:sleep_id]).destroy
    redirect_to sleep_path(params[:sleep_id])
    
  end
  
  private
  
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
