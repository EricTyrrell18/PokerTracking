class PlayersController < ApplicationController
  def destroy
    @player = Player.find(params[:id])
    @player.destroy
  end
end
