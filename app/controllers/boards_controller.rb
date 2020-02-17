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
    # if @article.present? 
    #   @user_article = Article.where(user_id: @article.user.id).where.not(id: @article.id).limit(16).order("created_at DESC")
    #   @comment_article = Comment.where(article_id: @article.id).limit(5).order("created_at DESC")
    #   @comment = Comment.new
    #   @comment_all = Comment.where(article_id: @article.id).order("created_at DESC")
    # else 
    #   respond_to do |format|
    #     format.html { redirect_to root_path }
    #     format.json
    #   end  
    # end  
  end

  private

  def board_params
    params.require(:board).permit(:name, :text).merge(user_id: current_user.id)
  end

end
