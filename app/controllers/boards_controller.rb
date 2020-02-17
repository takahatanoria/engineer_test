class BoardsController < ApplicationController
  def index
    @boards = Board.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
    @board = Board.new
  end

  def create
    if user_signed_in?
      @board = Board.create(board_params)
      redirect_to action: :index 
    else  
      redirect_to root_path
    end
  end  

  def show
    @board = Board.find(params[:id])
    @comment = Comment.new
    @comment_all = Comment.where(board_id: @board.id)
  end


  private

  def board_params
    params.require(:board).permit(:name, :text,:main_category,:sub_category).merge(user_id: current_user.id)
  end

end
