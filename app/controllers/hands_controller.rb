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
    @hand.save!
  end
  def edit
  end
  def update 
  end
  def delete
  end
  private 
    def hand_params
      params.require(:hand).permit(
        :id, :game_id, :result,
	table_cards_attributes: [:rank, :suit]
      )
    end
end
