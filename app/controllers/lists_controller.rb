class ListsController < ApplicationController
  before_action :set_board, only: [:new, :create, :edit, :update]
  before_action :set_list, only: [:edit, :update, :destroy]

  def new
    @lists = @board.lists.new
  end

  def create
    @board.lists.new(list_params)
    redirect_to @board
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to lists_path
    else
      render :edit
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def set_board
    @board = Board.find(params[:board_id])
  end

  def list_params
    params.require(:list).permit(:name, :priority)
  end
end
