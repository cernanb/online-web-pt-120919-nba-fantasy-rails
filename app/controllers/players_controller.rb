class PlayersController < ApplicationController
  def create
    binding.pry
    player = Player.new(player_params)

    if player.save
      render json: { status: 201 }
    else
      render json: { status: 500 }
    end
  end

  private

  def player_params
    params.permit(:name, :number, :photo)
  end
end