class HandsController < ApplicationController
  def index
  end
  def show
    @game = Game.find(params[:game_id])
    @hand = @game.hands.find(params[:id])
  end
  def new
    @game = Game.find(params[:game_id])
    @hand = @game.hands.build
    @hand.table_cards.build
  end
  def create
    @game = Game.find(params[:game_id])
    @hand = @game.hands.build(hand_params)
    #@hand.card_table.build
    if @hand.save!
      redirect_to game_hand_path(@game.id, @hand.id)
    else
      render 'new'
    end
  end

  def edit
    #Haven't gotten this to work yet
    #@game = Game.find(params[:game_id])
    #@hand = Hand.find(params[:id])
  end

  def update 
  end
  
  def destroy
    @hand = Hand.find(params[:id])
    @hand.destroy

    redirect_to game_path(params[:game_id])
  end
  private 
    def hand_params
      params.require(:hand).permit(
        :id, :game_id, :result, :note,
	table_cards_attributes: [:rank, :suit]
      )
    end
end
