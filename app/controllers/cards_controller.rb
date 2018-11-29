class CardsController < ApplicationController
  before_action :set_list
  before_action :set_card, only: [:edit, :update, :destroy]

  def index
    @cards = @list.cards.new
  end

  def new
    @card = Card.new
  end

  def create
    @list.cards.create(card_params)
    redirect_to board_path(@list.board_id)
  end

  def edit
  end

  def update
    if @card.update(card_params)
      redirect_to board_path(@list.board_id)
    else
      render :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to board_path(@list.board_id)
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def card_params
    params.require(:card).permit(:title, :description, :priority)
  end
end
