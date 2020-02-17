class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create 
    @board = Board.find(params[:board_id])
    @comment = @board.comments.build(comment_params)
    @comment.save
    redirect_to board_path(@board) 

  end

  private
  def comment_params #requireでreviewバリューを取得。premitで三つをキーとする安全面で保証されたハッシュを取得。mergaメソッドで分けられたハッシュを統合。requireでメソッドで取得したハッシュと結合
    params.require(:comment).permit(:name, :text).merge(board_id: params[:board_id], user_id: current_user.id)
  end

end
