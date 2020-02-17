class BoardsController < ApplicationController
  def index
    @boards = Board.all.order("id DESC")
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.create(board_params)
    redirect_to action: :index 
  end

  private

  def board_params
    params.require(:board).permit(:name, :text).merge(user_id: current_user.id)
  end

end
