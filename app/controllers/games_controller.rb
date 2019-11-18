class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  def show
    @game = Game.find(params[:id])
  end
  def new
    @game = Game.new
    @game.players.build
  end
  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path
    else
        render 'new'
    end

  end
  def edit
  end
  def delete
  end
  private
    def game_params
      params.require(:game).permit(
         :date_played,
	 players_attributes: [:name]
                    )

    end
end
