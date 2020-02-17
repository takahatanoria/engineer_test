class SearchesController < ApplicationController
  before_action :set_search

  def set_search
    if params[:q] != nil
      @search = Board.ransack(params[:q])
      @search_boards = @search.result.page(params[:page]).per(5).order("created_at DESC")
    else
      @search = Board.ransack(params[:q])
    end
  end

  def index
    @boards = Board.all
  end




end
